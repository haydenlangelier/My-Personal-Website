json.extract! event, :id, :title, :host, :time, :location, :interest, :details, :attending, :created_at, :updated_at
json.url event_url(event, format: :json)