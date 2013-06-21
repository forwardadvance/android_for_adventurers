# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :answer do
    person_id 1
    completed_exercise_id 1
    text "MyText"
  end
end
