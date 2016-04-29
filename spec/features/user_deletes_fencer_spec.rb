# require 'rails_helper'
#
# feature "user deletes a fencer from the website" do
#   let!(:user1) { FactoryGirl.create(:user) }
#   let!(:user2) { FactoryGirl.create(:user) }
#   let!(:fencer1) { FactoryGirl.create(:fencer, user: user1) }
#
#   scenario "user successfully deletes a fencer they created" do
#     visit root_path
#     sign_in(user1)
#     click_link fencer1.name
#     click_button "Delete Fencer"
#
#     expect(page).to_not have_content fencer1.name
#   end
#
#   scenario "user tries to delete a fencer someone else created" do
#     visit root_path
#     sign_in(user2)
#     click_link fencer1.name
#
#     expect(page).to_not have_button "Delete Fencer"
#   end
#
#   scenario "non-user tries to delete a fencer someone else created" do
#     visit root_path
#     click_link fencer1.name
#
#     expect(page).to_not have_button "Delete Fencer"
#   end
# end
