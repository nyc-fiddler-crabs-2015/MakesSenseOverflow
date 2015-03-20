require 'rails_helper'
require 'pp'

describe AnswersController do
  describe "GET #index" do
    it "renders the :index view"
      get :index
      response.should render_template :index
  end

  describe "GET #show" do
    it "renders the :show template"
      get :show
      response.should render_template :show
  end

  describe "GET #new" do
    it "renders the :new template"
      get :new
      response.should render_template :new
  end
end
