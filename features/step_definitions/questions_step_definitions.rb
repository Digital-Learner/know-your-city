Given(/^I am on the statements create page$/) do
  visit(new_question_path)
end

When(/^I submit a question with its correct answer$/) do
  fill_in "Statement", :with => "Tower Bridge is the oldest existing bridge across 
                                the River Thames"
  choose("Fact")
  click_button("Create")
end

Then(/^I should see "(.*?)"$/) do |content|
  page.should have_content(content)
end
