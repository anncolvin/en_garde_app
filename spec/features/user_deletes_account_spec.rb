# require 'rails_helper'
#
#   # [X] As an authenticated user
#   # I want to delete my account
#   # So that my information is no longer retained by the app
#
# feature "user deletes their account" do
#   let!(:user1) { FactoryGirl.create(:user) }
#   let!(:user2) { FactoryGirl.create(:user, user_name: "heyyythere") }
#   let!(:fencer1) { FactoryGirl.create(:fencer, user: user1) }
#   let!(:fencer2) { FactoryGirl.create(:fencer, user: user1) }
#   let!(:fencer3) { FactoryGirl.create(:fencer, user: user2) }
#
#   scenario "user deletes account successfully" do
#     sign_in(user1)
#
#     click_on("Update Profile")
#
#     click_on "Cancel my account"
#
#     expect(page).to have_content "Bye! Your account has been successfully cancelled. We hope to see you again soon."
#   end
#
#   scenario "user deletes account and all fencers they created" do
#     sign_in(user1)
#
#     expect(page).to have_content fencer1.name
#     expect(page).to have_content fencer2.name
#     expect(page).to have_content fencer3.name
#
#     click_on("Update Profile")
#
#     click_on "Cancel my account"
#
#     visit fencers_path
#
#     expect(page).to have_content fencer3.name
#     expect(page).to_not have_content fencer1.name
#     expect(page).to_not have_content fencer2.name
#   end
# end
