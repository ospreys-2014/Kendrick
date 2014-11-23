require 'rails_helper'

feature 'Signing up' do

  scenario 'Successful sign up' do
   visit '/'
   click_link 'SignUp'
   fill_in("Username", with: "Jobin")
   fill_in("First name", with: "jobin")
   fill_in("Last name", with: "toby")
   fill_in("Password", with: "password")
   fill_in("Password confirmation", with: "password")
   fill_in("Email address", with: "123@gmail.com")
   click_button "Sign up"
   expect(page).to have_content("You have signed up successfully.")
  end

  scenario 'Can see genres_path post signup' do
   visit '/'
   click_link 'SignUp'
   fill_in("Username", with: "Jobin")
   fill_in("First name", with: "jobin")
   fill_in("Last name", with: "toby")
   fill_in("Password", with: "password")
   fill_in("Password confirmation", with: "password")
   fill_in("Email address", with: "123@gmail.com")
   click_button "Sign up"
   save_and_open_page
   expect(page.current_path).to eq genres_path
  end

end
