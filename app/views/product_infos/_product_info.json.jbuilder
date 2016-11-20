json.extract! product_info, :id, :label, :created_at, :updated_at
json.url product_info_url(product_info, format: :json)