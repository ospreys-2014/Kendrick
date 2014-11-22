require 'rails_helper'

feature 'Signing up' do

  scenario 'Successful sign up' do
   visit '/'
   click_link 'Signup'
   fill_in("Username", with: "Jobin")
   fill_in("First name", with: "jobin")
   fill_in("Last name", with: "toby")
   fill_in("Password", with: "password")
   fill_in("Password confirmation", with: "password")
   fill_in("Email address", with: "123@gmail.com")
   click_button "Sign up"
   expect(page).to have_content("You have signed up successfully.")
  end
end
