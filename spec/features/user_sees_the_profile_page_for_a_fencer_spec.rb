require 'rails_helper'

feature "user sees a specific fencer page" do
  let!(:fencer1) { FactoryGirl.create(:fencer) }
  let!(:fencer2) { FactoryGirl.create(:fencer) }
  let!(:fencer3) { FactoryGirl.create(:fencer) }

  scenario 'user visits page for a specific fencer' do
    visit fencers_path

    click_link fencer1.name

    expect(page).to have_content(fencer1.name)
    expect(page).to_not have_content(fencer2.name)
  end
end
