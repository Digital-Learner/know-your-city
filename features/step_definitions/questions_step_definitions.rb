Given(/^I am on the statements create page$/) do
  visit(new_question_path)
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |field, value|
  fill_in field, :with => value
end

When(/^I choose "(.*?)"$/) do |radio|
  choose(radio)
end

When(/^I press "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end
