class CreatePoints < ActiveRecord::Migration[5.0]
  def change
    create_table :points do |t|
      t.integer "bout_id",         null: false
      t.integer "fencer_id",       null: false
      t.string  "status"
      t.string  "reason_category"
      t.string  "reason"
    end
  end
end
