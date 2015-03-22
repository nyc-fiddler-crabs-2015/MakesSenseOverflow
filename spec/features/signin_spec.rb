require 'capybara/rspec'
require 'rails_helper'

feature "the login process" do
  background :each do
    User.create(name: 'batman', password: '12345')
  end

  scenario "Logs in a session correctly" do
    visit '/sessions/new'
    within('#signin') do
      fill_in 'Name', :with => 'batman'
      fill_in 'Password', :with => '12345'
    end
    click_button 'Sign In'
    expect(page).to have_content 'batman'
  end

  scenario "Fails login with nonexistant name" do
    visit '/sessions/new'
    within('#signin') do
      fill_in 'Name', :with => 'superman'
      fill_in 'Password', :with => '12345'
    end
    click_button 'Sign In'
    expect(page).to_not have_content 'batman'
  end

  scenario "Fails login with an incorrect password" do
    visit '/sessions/new'
    within('#signin') do
      fill_in 'Name', :with => 'batman'
      fill_in 'Password', :with => 'abcde'
    end
    click_button 'Sign In'
    expect(page).to_not have_content 'batman'
  end

end