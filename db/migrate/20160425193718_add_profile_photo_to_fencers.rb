class AddProfilePhotoToFencers < ActiveRecord::Migration[5.0]
  def change
    add_column :fencers, :profile_photo, :string
  end
end
