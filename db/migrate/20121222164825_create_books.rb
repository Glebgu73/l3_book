class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :description
      t.string :author
      t.string :publishing_house
      t.integer :production_year
      t.integer :number_of_pages

      t.timestamps
    end
  end
end
