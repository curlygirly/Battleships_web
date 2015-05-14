Given(/^I'm on the place ship page$/) do
  visit('/placeship')
end

Then(/^I see "([^"]*)"$/) do |words|
  expect(page).to have_content(words)
end

When(/^I enter "([^"]*)"$/) do |position|
  fill_in('shipbox', with: position)
end

When(/^I press submit$/) do
  click_button "Smack dat bitch!"
end

Then(/^the ship will appear on the board at that coordinate$/) do
  expect(page).to have_content('BBBB')
end
