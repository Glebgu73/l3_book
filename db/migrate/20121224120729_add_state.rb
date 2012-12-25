class AddState < ActiveRecord::Migration
  def change
	add_column :book, :state, :string
  end
end
