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
   expect(page.current_path).to eq genres_path
  end

  scenario 'User can specify that they are an artist via checkbox' do
   visit '/'
   click_link 'SignUp'
   fill_in("Username", with: "Jobin")
   fill_in("First name", with: "jobin")
   fill_in("Last name", with: "toby")
   fill_in("Password", with: "password")
   fill_in("Password confirmation", with: "password")
   fill_in("Email address", with: "123@gmail.com")
   check('user_artist')
   expect{page.check('user_artist').to eq true}
  end

end
