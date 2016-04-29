# require 'rails_helper'
#
# feature "user sees a list of fencers" do
#   let!(:fencer1) { FactoryGirl.create(:fencer) }
#   let!(:fencer2) { FactoryGirl.create(:fencer) }
#   let!(:fencer3) { FactoryGirl.create(:fencer) }
#
#   scenario 'user visits home page to view list of fencers' do
#     visit root_path
#
#     expect(page).to have_content(fencer1.name)
#     expect(page).to have_content(fencer2.name)
#   end
# end
