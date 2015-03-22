require 'rails_helper'

feature "STUFF" do
  let(:user) {FactoryGirl.create(:user)}

  scenario "Creates a new user successfully" do
    visit signup_path

    fill_in "Name", :with => user.name
    fill_in "Password", :with => user.password
    fill_in "Password confirmation", :with => user.password
    fill_in "Email", :with => user.email
    click_on "Sign Up"

    expect(page).to have_content(user.name)
  end

end