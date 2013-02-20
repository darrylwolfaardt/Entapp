# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :role_assignment do |feature|
    feature.association :role
    feature.association :users
  end
end
