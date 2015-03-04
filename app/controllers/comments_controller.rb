class CommentsController < ApplicationController
  skip_before_filter :authenticate_user!, :only => [:create]

  def create
  	@article = Article.find(params[:article_id])
	  @comment = @article.comments.build(params_comment)

    if user_signed_in?
      @comment.name = current_user.username
      @comment.email= current_user.email
    end

	  if @comment.save
	    redirect_to @article
	  else
      redirect_to :back, alert: "Comment can't be blank."
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @article = Article.find(@comment.commentable_id)
    @comment.destroy
    
    redirect_to @article
  end

  private
  	def params_comment
  		params.require(:comment).permit(:article_id, :name, :email, :comment)
  	end
end
