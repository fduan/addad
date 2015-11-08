json.array!(@products) do |product|
  json.extract! product, :id, :name, :description, :base_price, :currency, :rate_type
  json.url product_url(product, format: :json)
end
