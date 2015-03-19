require 'rails_helper'
require 'pp'

describe QuestionsController do

  describe 'create new question' do
    context "POST /questions" do
      before :each do
        question :create, {question: { title: "Hello", description: "This is a great question!", user_id: 1 } }
      end

      it 'should have a new entry in the database' do
        expect(Question.all.count).to eq(1)
      end
    end
  end
end
