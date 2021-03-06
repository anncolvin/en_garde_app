require 'rails_helper'

# [ X] As an unauthenticated user
# I want to sign in
# So that I can post items and review them

feature "user updates their profile" do
  let!(:user1) { FactoryGirl.create(:user, email: "bestcoach4u@example.com") }

  scenario "user updates profile successfully" do
    sign_in(user1)
    click_on("Update Profile")

    fill_in "Email", with: "bestestcoach@example.com"
    fill_in "Current password", with: user1.password
    click_on "update-profile-button"

    expect(page).to have_content "Your account has been updated successfully."
  end

  scenario "user updates profile unsuccessfully" do
    sign_in(user1)
    click_on("Update Profile")

    fill_in "Email", with: "bestestcoach@example.com"
    click_on "update-profile-button"

    expect(page).to have_content "Current password can't be blank"
  end
end
