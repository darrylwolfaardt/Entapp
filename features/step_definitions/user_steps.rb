Given /^I am not logged in$/ do
  visit ('/users/sign_out')
end
When /^I complete the Sign up form with valid details$/ do
  visit "/users/sign_up"
  fill_in :email => "bob@example.com"
  fill_in :password => "secret"
  fill_in :password_confirmation => "secret"
  click_button "Sign up"
end