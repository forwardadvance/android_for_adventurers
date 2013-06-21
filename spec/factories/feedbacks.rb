# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :feedback do
    person_id 1
    exercise_slug "MyString"
    section_slug "MyString"
    text "MyText"
  end
end
