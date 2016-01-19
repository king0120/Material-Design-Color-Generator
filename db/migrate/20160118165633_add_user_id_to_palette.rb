class AddUserIdToPalette < ActiveRecord::Migration
  def change
    add_column :palettes, :user_id, :integer
  end
end
