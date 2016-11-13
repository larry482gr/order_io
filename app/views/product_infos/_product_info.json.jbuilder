json.extract! product_info, :id, :label, :language_id, :created_at, :updated_at
json.url product_info_url(product_info, format: :json)