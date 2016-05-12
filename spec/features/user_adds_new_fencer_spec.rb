# require 'rails_helper'
#
# feature "user adds a new fencer page" do
#   let!(:user1) { FactoryGirl.create(:user) }
#
#   scenario 'user successfully adds a fencer' do
#     visit fencers_path
#
#     sign_in(user1)
#
#     fill_in "name", with: "Inara"
#     fill_in "dominant_hand", with: "Right"
#     fill_in "letter_rating", with: "U"
#
#     expect(page).to have_content "Inara"
#   end
#   scenario 'user tries to submit a blank form' do
#     visit root_path
#     sign_in(user1)
#
#     click_link "Add New Fencer"
#
#     click_button "Submit Fencer"
#
#     expect(page).to have_content "Name can't be blank"
# end
# end
