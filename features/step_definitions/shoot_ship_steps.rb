Given(/^I am on the shoot ship page$/) do
  visit('/shoot_ship')
end

When(/^I choose to fire at "([^"]*)"$/) do |position|
  fill_in('shipbox', with: position)
end

When(/^I press fire$/) do
  click_button 'fire'
end

Then(/^the shot will appear as a miss on the board at that coordinate$/) do
  expect('/playing_page').to have_content('-')
end