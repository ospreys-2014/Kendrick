require 'spec_helper'

feature "signing in." do

  scenario 'Signing in via form' do
    user = User.create(username: "jajajaj", password: "1", first_name: "ali", last_name: "yeysides", email_address: "123@gmail.com")
    visit '/'
    click_link('signin-link')
    fill_in('Username', with: "jajajaj")
    fill_in('Password', with: "1")
    click_button("Sign in")
    save_and_open_page
    expect(page).to have_content("Signed in successfully.")
  end
end
