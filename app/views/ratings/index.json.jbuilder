json.array!(@ratings) do |rating|
  json.extract! rating, :id, :userid, :itemid, :rating
  json.url rating_url(rating, format: :json)
end
