class CreateBouts < ActiveRecord::Migration[5.0]
  def change
      create_table :bouts do |t|
        t.belongs_to :fencer, null: false
        t.string :location
        t.string :qualifying
        t.text :notes
        t.timestamps
        end
  end
end
