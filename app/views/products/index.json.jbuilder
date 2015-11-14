json.array!(@products) do |product|
  json.extract! product, :id, :name, :description, :img_url, :price, :qty
  json.url product_url(product, format: :json)
end
