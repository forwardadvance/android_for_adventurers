json.array!(@exercises) do |exercise|
  json.extract! exercise, :title, :section_id
  json.url exercise_url(exercise, format: :json)
end