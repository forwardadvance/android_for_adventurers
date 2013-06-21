json.array!(@answers) do |answer|
  json.extract! answer, :person_id, :completed_exercise_id, :text
  json.url answer_url(answer, format: :json)
end