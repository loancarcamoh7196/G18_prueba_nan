json.extract! to_do, :id, :name, :description, :image, :created_at, :updated_at
json.url to_do_url(to_do, format: :json)
