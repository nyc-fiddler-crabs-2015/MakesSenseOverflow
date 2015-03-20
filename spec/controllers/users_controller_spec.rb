require 'rails_helper'


describe UsersController do
  let(:user) {User.create(name: 'Dongchul',email: 'ldc@ldc.com' password: '1234')}

  describe 'GET Users#new' do
    it 'should render login page' do
      new_user_path
      expect(response.status).to eq(200)
    end
  end

  describe 'users#create' do
    it 'should redirect after post' do
      user :create, {name: 'Chris', email: 'chris@chris.com', password: '12345'}
      expect(response.status).to be_redirect
    end
  end

  describe 'users#show' do
    it 'should render the show page' do
      get "/users/#{user.id}"
      expect(last_response).to be_ok
    end
  end
end