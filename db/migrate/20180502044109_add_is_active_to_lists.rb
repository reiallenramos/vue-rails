class AddIsActiveToLists < ActiveRecord::Migration[5.1]
  def change
    add_column :lists, :is_active, :boolean, default: true
  end
end
