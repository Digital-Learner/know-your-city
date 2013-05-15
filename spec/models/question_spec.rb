require 'spec_helper'

describe Question do
  
  it "is valid with valid attributes" do
    Question.new(statement: "Tower Bridge was built in the year 10 BC", fact: "false" ).should be_valid
  end

  it "is not valid without a statement" do
    question = Question.new statement: nil
    question.should_not be_valid
  end

  it "is not valid without a fact of true or false" do
    question = Question.new fact: nil, statement: "Tower Bridge was built in the year 10 BC"
    question.should_not be_valid
  end

  it "is invalid when statement is shorter than 10" do
    question = Question.new fact: true, statement: "abcdefghi"
    question.should_not be_valid
  end
end
