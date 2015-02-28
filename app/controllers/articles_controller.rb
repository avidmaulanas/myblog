class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  # skip_before_action :check_subdomain, only: [:index]
  skip_before_filter :authenticate_user!, :only => [:index, :show, :tagged]

  # GET /articles
  # GET /articles.json
  def index
    if request.subdomain.empty?
      @articles = Article.published.order_by_desc.page(params[:page]).per(10)
    else
      @articles = Article.current_user.published.order_by_desc.page(params[:page]).per(10)
    end
  end

  # GET /articles/1
  # GET /articles/1.json
  def show
    # Object comment
    @comments = @article.comments.reverse

    # New object comment
    @comment = @article.comments.new
  end

  # GET /articles/new
  def new
    @article = Article.new     
  end

  # GET /articles/1/edit
  def edit
  end

  # POST /articles
  # POST /articles.json
  def create
    @article = Article.new(article_params)
    @article.user_id = current_user.id
    @article.tag_list.add(params[:tag_list])
    @article.save
    respond_to do |format|
      if @article.save
        format.html { redirect_to @article, notice: 'Article was successfully created.' }
        format.json { render :show, status: :created, location: @article }
      else
        format.html { render :new }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articles/1
  # PATCH/PUT /articles/1.json
  def update
    @article.tag_list = params[:tag_list]
    @article.user_id = current_user.id
    @article.save
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to @article, notice: 'Article was successfully updated.' }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articles/1
  # DELETE /articles/1.json
  def destroy
    @article.destroy
    respond_to do |format|
      format.html { redirect_to articles_url, notice: 'Article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def tagged
    if params[:tag].present? 
      @articles = Article.published.tagged_with(params[:tag]).page(params[:page]).per(10)
      @num_articles = Article.published.tagged_with(params[:tag]).size
    else 
      @articles = Article.published.order('created_at DESC').page(params[:page]).per(10)
      @num_articles = Article.order('created_at DESC').size
    end  
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id]) 
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def article_params
      params.require(:article).permit(:title, :description, :user_id, :status, :tag_list)
    end    
end
