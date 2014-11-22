require 'rails_helper'

feature 'Signing up' do

  scenario 'Successful sign up' do
   visit '/'
   click_link 'Signup'
   fill_in "username", with: "Jobin"
   fill_in "first_name", with: "jobin"
   fill_in "last_name", with: "toby"
   fill_in "password", with: "password"
   fill_in "password confirmation", with: "password"
   fill_in "email address", with: "123@gmail.com"
   click_button "Sign up"
   expect(page).to have_content("You have signed up successfully.")
  end
end
