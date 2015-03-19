require 'rails_helper'
require 'pp'

describe QuestionsController do

  describe 'create new question' do
    let(:user) { create(:question) }
    it 'should have a new entry in the database' do
      expect(Question.all.count).to eq(1)
    end
  end
end
