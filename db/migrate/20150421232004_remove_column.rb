class RemoveColumn < ActiveRecord::Migration
  def change
  	remove_column :places, :description, :string
  end
end
