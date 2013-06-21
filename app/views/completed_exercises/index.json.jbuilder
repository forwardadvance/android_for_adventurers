json.array!(@completed_exercises) do |completed_exercise|
  json.extract! completed_exercise, :exercise_id, :person_id
  json.url completed_exercise_url(completed_exercise, format: :json)
end