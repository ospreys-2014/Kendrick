require 'spec_helper'

feature "signing in." do
  scenario 'Signing in via form' do
    user = User.create(username: "ali", password: "1")
    visit '/'
    click_link 'Login'
    fill_in 'Username', with: user.name
    fill_in 'Password', with: user.password
    click_button "Sign in"
    expect(page).to have_content("Signed in successfully.")
  end
end
