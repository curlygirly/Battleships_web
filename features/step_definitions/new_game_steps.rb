Given(/^I am on the homepage$/) do
  visit('/')
end

When(/^I follow "([^"]*)"$/) do |arg1|
  click_link('New Game')
end

When(/^I enter my "([^"]*)"$/) do |arg1|
  fill_in('name', with: 'Jennifer')
end

When(/^I click on "([^"]*)"$/) do |arg1|
  click_on('submit')
end

Then(/^I should see "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end