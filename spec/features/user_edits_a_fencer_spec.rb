require 'rails_helper'

feature "user edits a fencer" do
  let!(:user1) { FactoryGirl.create(:user) }
  let!(:user2) { FactoryGirl.create(:user) }
  let!(:fencer1) { FactoryGirl.create(:fencer, user: user1) }

  scenario "user edits a fencer they created" do
    visit root_path
    sign_in(user1)
    click_link fencer1.name

    click_link "Edit fencer"
    fill_in "notes", with: "this fencer is the best!"
    select "DIV1", from: "category"
    click_on "Submit fencer"

    expect(page).to have_content "this fencer is the best!"
    expect(page).to have_content "DIV1"
  end
end
