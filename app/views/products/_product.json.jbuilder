json.extract! product, :id, :name, :price, :sale_off, :description, :is_service, :product_active, :created_at, :updated_at
json.url product_url(product, format: :json)