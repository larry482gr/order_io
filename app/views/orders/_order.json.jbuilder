json.extract! order, :id, :table_id, :is_closed, :created_at, :updated_at 
json.order_products_attributes @order.order_products do |ord_pr|
  json.product_id ord_pr.product_id
  json.size_id ord_pr.size_id
  json.price ord_pr.price
  json.metadata ord_pr.metadata
end
json.url order_url(order, format: :json)
