json.extract! event, :id, :name, :address, :content, :day, :genre_id, :created_at, :updated_at
json.url event_url(event, format: :json)
