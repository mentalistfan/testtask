json.array!(@comments) do |comment|
  json.extract! comment, :id, :author, :body, :rating
  json.url comment_url(comment, format: :json)
end
