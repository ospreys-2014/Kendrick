require 'spec_helper'

feature "signing in." do

  scenario 'Signing in via form' do
    user = User.create(username: "jajajaj", password: "1", first_name: "ali", last_name: "yeysides", email_address: "123@gmail.com")
    visit '/'
    click_link('signin-link')
    fill_in('Username', with: "jajajaj")
    fill_in('Password', with: "1")
    click_button("Sign in")
    expect(page).to have_content("Signed in successfully.")
  end

  scenario 'Signing in via form and entering incorrect info spits an error' do
    user = User.create(username: "jajajaj", password: "1", first_name: "ali", last_name: "yeysides", email_address: "123@gmail.com")
    visit '/'
    click_link('signin-link')
    fill_in('Username', with: "adssada")
    fill_in('Password', with: "32323")
    click_button("Sign in")
    expect(page).to have_content("Sorry, those credentials are incorrect.")
  end

end
