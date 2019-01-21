require 'rails_helper'

describe 'User Navigation' do
  describe 'User Creation' do
    it 'can register user with the right attributes' do
      visit new_user_registration_path
      fill_in 'user[username]', with: 'test'
      fill_in 'user[email]', with: 'test@test.com'
      fill_in 'user[first_name]', with: 'Test'
      fill_in 'user[last_name]', with: 'User'
      fill_in 'user[password]', with: 'password'
      fill_in 'user[password_confirmation]', with: 'password'
      click_on 'Sign up'
      expect(page).to have_content('welcome')
    end

  end
end
