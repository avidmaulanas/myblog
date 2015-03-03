module ArticlesHelper
  def header_custom
    if controller_name.eql?("articles") and action_name.eql?("show") 
      :header_article
    elsif controller_name.eql?("articles") and action_name.eql?("index") 
      :header_articles
    elsif controller_name.eql?("home") and not user_signed_in?
      :header_home
    elsif action_name.eql?("tagged")
      :header_article_tagged
    else
      :header_dashboard
    end
  end
end
