json.array!(@articles) do |article|
  json.extract! article, :id, :title, :description, :user_id
  json.url article_url(article, format: :json)
end
