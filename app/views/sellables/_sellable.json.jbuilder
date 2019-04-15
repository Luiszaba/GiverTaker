json.extract! sellable, :id, :title, :address, :price, :description, :completed, :created_at, :updated_at
json.url sellable_url(sellable, format: :json)
