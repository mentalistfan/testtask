json.array!(@news) do |news|
  json.extract! news, :id, :title, :pending, :published
  json.url news_url(news, format: :json)
end
