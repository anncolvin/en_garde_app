class DeleteFencerAvatar < ActiveRecord::Migration[5.0]
  def up
    remove_column(:fencers, :avatar)
  end

  def down
    add_column(:fencers, :avatar)
  end
end
