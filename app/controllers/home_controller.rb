class HomeController < ApplicationController
	skip_before_filter :authenticate_user!, :only => :index

  def index
  	@articles = Article.published.order_by_desc.page(params[:page]).per(20)
  end
end
