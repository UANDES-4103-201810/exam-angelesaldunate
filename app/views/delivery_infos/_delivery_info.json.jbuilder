json.extract! delivery_info, :id, :address, :adressinfo, :phone, :created_at, :updated_at
json.url delivery_info_url(delivery_info, format: :json)
