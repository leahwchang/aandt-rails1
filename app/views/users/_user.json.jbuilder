json.extract! user, :id, :fname, :lname, :bio, :created_at, :updated_at
json.url user_url(user, format: :json)