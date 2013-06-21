json.array!(@logins) do |login|
  json.extract! login, :person_id, :login_key
  json.url login_url(login, format: :json)
end