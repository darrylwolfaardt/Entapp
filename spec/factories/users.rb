FactoryGirl.define do
  factory :user do |f|
    f.first_name "Phredd"
    f.password "secret12"
    f.password_confirmation { |u| u.password }
    f.email { |u| "#{u.first_name}@example.com" }

  end

end