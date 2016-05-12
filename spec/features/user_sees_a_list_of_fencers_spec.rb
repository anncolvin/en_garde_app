# require 'rails_helper'


#
#
# feature "user sees a list of fencers" do
#   let!(:user1) { FactoryGirl.create(:user) }
#   let!(:fencer1) { FactoryGirl.create(:fencer) }
#   let!(:fencer2) { FactoryGirl.create(:fencer) }
#   let!(:fencer3) { FactoryGirl.create(:fencer) }
#
#   scenario 'user visits fencers index page to view list of fencers' do
#     sign_in(user1)
#     visit fencers_path
#
#     expect(page).to have_content(fencer1.name)
#     expect(page).to have_content(fencer2.name)
#   end
# end
