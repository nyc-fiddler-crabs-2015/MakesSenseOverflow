require 'rails_helper'
require 'factory_girl_rails'

describe User do

  let(:user) { FactoryGirl.create(:user) }

  it "has a valid FACTORY" do
    expect(FactoryGirl.create(:user)).to be_valid
  end

  it "to be valid User" do
    expect(user).to be_valid
  end

  it "should have a username" do
    expect(user.name).to eq("steven")
  end

  it "should have a email" do
    expect(user.email).to eq('steven123@hotmail.com')
  end

  it "should have a password" do
    expect(user.password).to eq("letsgo")
  end

end