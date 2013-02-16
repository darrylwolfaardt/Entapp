When /^I visit the home page$/ do
  visit root_path
end
Then /^I should see a link "([^"]*)"$/ do |link|
  page.should have_link (link)
end
When /^I follow the "([^"]*)" link$/ do |arg|
  click_link(arg)
end
Then /^I should see a form with "([^"]*)"$/ do |content|
  page.should have_content(content)
end
When /^I should see a button "([^"]*)"$/ do |button|
  page.should have_button(button)
end
When /^I visit the "([^"]*)" page$/ do |arg|
  visit
end
When /^I visit the Sign up page$/ do
  visit '/users/sign_up'
end
Then /^I should see the message "([^"]*)"$/ do |content|
  page.should have_content(content)
end
When /^I fill in "([^"]*)" with "([^"]*)"$/ do |field, text|
  fill_in field, :with => text
end
When /^I press "([^"]*)"$/ do |button|
  click_button(button)
end