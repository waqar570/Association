class AddColumnsToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :title, :string
    add_column :books, :year_published, :integer
    add_column :books, :isbn, :integer
    add_column :books, :price, :decimal
    add_column :books, :out_of_print, :boolean
    add_column :books, :views, :integer
  end
end
