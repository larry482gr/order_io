json.extract! product, :id, :label, :description, :photo, :ordering, :created_at, :updated_at
json.url product_url(product, format: :json)