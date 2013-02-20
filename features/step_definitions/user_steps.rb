

Given /^I am not signed in$/ do
  visit ('/users/sign_out')
end
When /^I complete the Sign up form with valid details$/ do
  visit "/users/sign_up"
  fill_in :email => "bob@example.com"
  fill_in :password => "secret"
  fill_in :password_confirmation => "secret"
  click_button "Sign up"
end

Given /^the following user records$/ do |table|
  table.hashes.each do |hash|
    FactoryGirl.create(:users, first_name: hash["name"], password: hash["password"])
  end

  #User.find_by_name("bob").role?('Admin').should be_true

end
Given /^the following user records and role assignments$/ do |table|
  table.hashes.each do |hash|

    FactoryGirl.create(:role, name: hash["rolename"])
    FactoryGirl.create(:user, first_name: hash["name"], password: hash["password"])
    #user = User.find_by_first_name(hash["name"])
    u = User.find_by_first_name(hash["name"])
    u.add_role(hash["rolename"])
    #user.has_role?(hash["rolename"]).should be_true
    #FactoryGirl.create(:role_assignment, users: user, role: role)


  end
    #Role.first.name.should be == "blah"
    #User.first.email.should be == "bob"
    #u.email.should be == "blah"
end

Given /^I am logged in as "([^"]*)" with password "([^"]*)"$/ do |name, password|
  unless name.blank?

    visit login_path
    fill_in "Email", :with =>  "#{name}@example.com"
    fill_in "Password", :with => password
    click_button "Sign in"

  end

end
When /^I visit the profile for "([^"]*)"$/ do |name|
  u = User.find_by_first_name(name)
  visit ("/users/#{u.id}")
  #page.should have_content("Edit Profile")

end

