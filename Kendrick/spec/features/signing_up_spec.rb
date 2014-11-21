require 'rails_helper'

feature 'Signing up' do

  scenario 'Successful sign up' do
   visit '/'
   click_link 'Sign up'
   fill_in "username", with: "Jobin"
   fill_in "password", with: "password"
   fill_in "password confirmation", with: "password"
   click_button "Sign up"
   expect(page).to have_content("You have signed up successfully.")
  end
end
