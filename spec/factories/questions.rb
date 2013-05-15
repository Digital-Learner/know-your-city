# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :question do
    statement "Tower Bridge was built in the year 10 BC"
    fact false
  end
end
