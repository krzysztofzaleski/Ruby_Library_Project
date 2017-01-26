json.extract! user, :id, :fname, :sname, :email, :created_at, :updated_at
json.url user_url(user, format: :json)