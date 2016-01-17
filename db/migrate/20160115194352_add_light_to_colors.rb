class AddLightToColors < ActiveRecord::Migration
  def change
    add_column :colors, :light, :boolean
  end
end
