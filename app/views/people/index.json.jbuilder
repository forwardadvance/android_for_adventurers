json.array!(@people) do |person|
  json.extract! person, :name, :pirate_name, :email
  json.url person_url(person, format: :json)
end