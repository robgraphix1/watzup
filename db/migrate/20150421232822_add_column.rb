class AddColumn < ActiveRecord::Migration
  def change
  	add_column :places, :description, :text
  end
end
