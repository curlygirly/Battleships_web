Given(/^I am on the homepage$/) do
  visit('/')
end

When(/^I follow "([^"]*)"$/) do |arg1|
  click_link(arg1)
end

When(/^I enter my name as "([^"]*)"$/) do |arg1|
  fill_in('name', with: arg1)
end

When(/^I click on "([^"]*)"$/) do |arg1|
  click_on(arg1)
end

Then(/^I should see "([^"]*)"$/) do |arg1|
  expect(page).to have_content(arg1)
end