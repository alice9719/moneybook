json.array!(@formms) do |formm|
  json.extract! formm, :id, :buyday, :title, :price, :ps
  json.url formm_url(formm, format: :json)
end
