# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :pageview do
    person_id 1
    url 1
    params "MyText"
  end
end
