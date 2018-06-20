json.extract! pizza_order, :id, :pizza_id, :order_id, :created_at, :updated_at
json.url pizza_order_url(pizza_order, format: :json)
