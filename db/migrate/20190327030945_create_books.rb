class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string  :title
      t.string  :author
      t.string  :genre
      t.string  :publisher
      t.string  :types
      t.integer :year
      t.integer :isbn
      t.timestamps
    end
  end
end
