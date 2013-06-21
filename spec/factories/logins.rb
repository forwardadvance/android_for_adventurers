# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :login do
    person_id 1
    login_key "MyString"
  end
end
