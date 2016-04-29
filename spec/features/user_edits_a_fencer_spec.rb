# require 'rails_helper'
#
# feature "user edits a fencer" do
#   let!(:user1) { FactoryGirl.create(:user) }
#   let!(:user2) { FactoryGirl.create(:user) }
#   let!(:fencer1) { FactoryGirl.create(:fencer, user: user1) }
#
#   scenario "user edits a fencer they created" do
#     visit root_path
#     sign_in(user1)
#     click_link fencer1.name
#
#     click_link "Edit fencer"
#     fill_in "City", with: "Juno"
#     select "Alabama", from: "State"
#     click_on "Submit fencer"
#
#     expect(page).to have_content "Juno, AL"
#   end
#
#   scenario "user cannot edit different user's fencer" do
#     visit root_path
#     sign_in(user2)
#     click_link fencer1.name
#
#     expect(page).to_not have_button "Edit Fencer"
#   end
#
#   scenario "non-user cannot edit a different user's fencer" do
#     visit root_path
#     click_link fencer1.name
#
#     expect(page).to_not have_button "Edit Fencer"
#   end
# end
