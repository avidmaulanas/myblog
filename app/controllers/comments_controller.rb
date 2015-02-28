class CommentsController < ApplicationController
  skip_before_filter :authenticate_user!, :only => [:create]

  def create
  	@article = Article.find(params[:article_id])
	  @comment = @article.comments.build(params_comment)
	  if @comment.save
	    redirect_to @article
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
  		params.require(:comment).permit(:article_id, :name, :email, :title, :comment)
  	end
end
