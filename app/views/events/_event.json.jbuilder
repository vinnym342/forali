json.extract! event, :id, :name, :description, :time, :organiser_id, :max_participants, :created_at, :updated_at
json.url event_url(event, format: :json)
