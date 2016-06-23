json.array!(@novels) do |novel|
  json.extract! novel, :id, :title
  json.url novel_url(novel, format: :json)
end
