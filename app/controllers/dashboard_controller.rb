class DashboardController < ApplicationController	

  def index
  	@articles_all = Article.current_user.order_by_desc.page(params[:page]).per(20)
  	@number_articles = Article.current_user.size

  	@number_articles_published = Article.current_user.published.size
  	@number_articles_draft = Article.current_user.draft.size
  end

end
