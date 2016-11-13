json.extract! product, :id, :label, :description, :photo, :sizes, :prices, :ordering, :language_id, :created_at, :updated_at
json.url product_url(product, format: :json)