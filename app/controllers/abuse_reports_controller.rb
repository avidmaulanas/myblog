class AbuseReportsController < InheritedResources::Base
	skip_before_filter :authenticate_user!, only: [:new, :create]
	before_action :authenticate_admin_user!, only: [:index, :show, :edit, :update, :destroy]
	# GET /abuse_reports
  # GET /abuse_reports.json
  def index
    @abuse_reports = AbuseReport.all
    render layout: 'abuse_report'
  end

  # GET /abuse_reports/1
  # GET /abuse_reports/1.json
  def show
  end

  # GET /abuse_reports/new
  def new
  	@article = Article.find(params[:article_id])
    @abuse_report = @article.abuse_reports.new
    respond_to do |format|
      format.js
    end
  end

  # GET /abuse_reports/1/edit
  def edit
  end

  # POST /abuse_reports
  # POST /abuse_reports.json
  def create
    @abuse_report = AbuseReport.new(abuse_report_params)
    @article = Article.where(slug: params[:article_id]).select(:id, :slug).first
    @abuse_report.article_id = @article.id
    respond_to do |format|
      if @abuse_report.save
        format.html { redirect_to @article, notice: 'Report Abuse was successfully posted.' }
        format.json { render :show, status: :created, location: @abuse_report }
      else
        format.html { render :new }
        format.json { render json: @abuse_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /abuse_reports/1
  # PATCH/PUT /abuse_reports/1.json
  def update
    respond_to do |format|
      if @abuse_report.update(abuse_report_params)
        format.html { redirect_to @abuse_report, notice: 'Article was successfully updated.' }
        format.json { render :show, status: :ok, location: @abuse_report }
      else
        format.html { render :edit }
        format.json { render json: @abuse_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /abuse_reports/1
  # DELETE /abuse_reports/1.json
  def destroy
    @abuse_report.destroy
    respond_to do |format|
      format.html { redirect_to abuse_reports_url, notice: 'Article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def abuse_report_params
      params.require(:abuse_report).permit(:email, :title, :description)
    end
end

