class DeleteFencerIdFromPoint< ActiveRecord::Migration[5.0]
  def up
    remove_column(:points, :fencer_id)
  end

  def down
    add_column(:points, :fencer_id)
  end

end
