class SearchController < ApplicationController
	skip_before_filter :authenticate_user!, :only => :index

  def index  	
  	search = Article.search(include: [:tags, :user]) do
		  fulltext params[:q]
		  with(:status, 'published')		  
		  paginate page: params[:page], per_page: 10
		end
		@articles = search.results
		@num_articles = search.total
  end
end
