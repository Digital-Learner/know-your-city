require 'spec_helper'

describe QuestionsController do

  describe "GET #new" do
    it "assigns a new Question to @question" do
      get :new
      assigns[:question].should be_a_new Question
    end

    it "renders the :new template" do
      get :new
      response.should render_template :new
    end
  end

  describe "POST #new" do

    let(:question) { mock_model(Question).as_null_object }

    before do
      Question.stub(:new).and_return(question)
    end

    it "creates a new Question" do
      Question.should_receive(:new).
              with("statement" => "Tower Bridge is registered as a ship", 
                    'fact' => true
                  ).
              and_return(question)
      post :create, :question => { :statement => "Tower Bridge is registered as a ship", :fact => true }
    end

    it "saves the question" do
      question.should_receive(:save)
      post :create
    end

    context "when the question saves successfully" do
      before do
        question.stub(:save).and_return(true)
      end

      it "sets a flash[:notice] message" do
        post :create
        flash[:notice].should eq("Thank you for adding to London Fact or Fiction")
      end

      it "redirects to the Questions 'index'" do
        post :create
        response.should redirect_to(:action => 'index')
      end
    end

    context "when the question fails to save" do
      before do
        question.stub(:save).and_return(false)
      end

      it "assigns @question" do
        post :create
        assigns[:question].should eq(question)
      end

      it "renders the new template" do
        post :create
        response.should render_template(:new)
      end
    end

  end
end