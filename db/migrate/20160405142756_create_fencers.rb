class CreateFencers < ActiveRecord::Migration[5.0]
  def change
    create_table :fencers do |t|
      t.belongs_to :user, null: false
      t.string :name, null: false
      t.integer :user_id, null: false
      t.string :avatar
      t.string :dominant_hand
      t.string :category
      t.string :letter_rating
      t.text  :notes
    end
  end
end
