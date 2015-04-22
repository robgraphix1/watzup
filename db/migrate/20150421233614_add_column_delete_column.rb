class AddColumnDeleteColumn < ActiveRecord::Migration
  def change
  	remove_column :places, :address, :string
  	remove_column :places, :description, :text
  	add_column :places, :address, :text
  	add_column :places, :description, :string
  end
end
