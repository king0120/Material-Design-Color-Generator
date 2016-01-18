class CreatePalettes < ActiveRecord::Migration
  def change
    create_table :palettes do |t|
      t.string :name, null: false
      t.integer :score, default: 0
      t.string :primary_name, null: false
      t.string :secondary_name, null: false
      t.string :dark_primary, null: false
      t.string :light_primary, null: false
      t.string :primary, null: false
      t.string :secondary, null: false
      t.string :text_color, null: false

      t.timestamps null: false
    end
  end
end
