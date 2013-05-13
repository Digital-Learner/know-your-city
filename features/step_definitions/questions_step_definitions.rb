Given(/^I am on the statements create page$/) do
  visit(new_question_path)
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |field, value|
  fill_in field, :with => value
end

When(/^I choose "(.*?)"$/) do |radio|
  choose(radio)
end

When(/^I press "(.*?)"$/) do |button|
  click_button(button)
end

Then(/^I should see "(.*?)"$/) do |content|
  page.should have_content(content)
end
