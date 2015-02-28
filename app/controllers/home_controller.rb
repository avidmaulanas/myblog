class HomeController < ApplicationController
	skip_before_filter :authenticate_user!, :only => :index
	skip_before_action :check_subdomain, only: [:index]
  def index
  	@articles = Article.published.page(params[:page]).per(20)
  end
end
