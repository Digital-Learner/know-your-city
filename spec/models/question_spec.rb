require 'spec_helper'

describe Question do
  
  it "is valid with valid attributes" do
    question = FactoryGirl.create(:question)
    question.should be_valid
  end

  it "is not valid without a statement" do
    question = FactoryGirl.build(:question, statement: nil)
    question.should_not be_valid
  end

  it "is not valid without a fact of true or false" do
    question = FactoryGirl.build(:question, fact: nil)
    question.should_not be_valid
  end

  it "is invalid when statement is shorter than 10" do
    question = FactoryGirl.build(:question, statement: "abcdefghi")
    question.should_not be_valid
  end
end
