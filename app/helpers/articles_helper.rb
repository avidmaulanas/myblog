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

  def link_tags(tags)
    tags.map { |tag| link_to "#{tag.name}", tagged_url(tag: tag.name) }.join(', ').html_safe
  end

  def post_author(article)
    "Posted by #{link_to article.user.full_name, user_path(article.user.slug)} on
     #{article.created_at.to_formatted_s(:long_ordinal)}".html_safe
  end
end
