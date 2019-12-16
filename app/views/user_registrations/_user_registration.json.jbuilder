json.extract! user_registration, :id, :created_at, :updated_at
json.url user_registration_url(user_registration, format: :json)
