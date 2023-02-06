class AddColumnsToAuthors < ActiveRecord::Migration[6.1]
  def change
    add_column :authors, :first_name, :string
    add_column :authors, :last_name, :string
    add_column :authors, :title, :string
  end
end
