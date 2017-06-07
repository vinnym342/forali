json.extract! event_page, :id, :title, :host, :created_at, :updated_at
json.url event_page_url(event_page, format: :json)
