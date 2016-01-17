class CreateColors < ActiveRecord::Migration
  def change
    create_table :colors do |t|
      t.string :name, null: false
      t.string :palette_50, null: false
      t.string :palette_100, null: false
      t.string :palette_200, null: false
      t.string :palette_300, null: false
      t.string :palette_400, null: false
      t.string :palette_500, null: false
      t.string :palette_600, null: false
      t.string :palette_700, null: false
      t.string :palette_800, null: false
      t.string :palette_900, null: false
      t.string :accent_100
      t.string :accent_200
      t.string :accent_400
      t.string :accent_700

      t.timestamps null: false
    end
  end
end
