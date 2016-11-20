json.extract! product, :id, :label, :description, :photo, :sizes, :prices, :ordering, :created_at, :updated_at
json.url product_url(product, format: :json)