json.extract! user, :id, :first, :last, :hosting, :attending, :details, :created_at, :updated_at
json.url user_url(user, format: :json)