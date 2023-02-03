class CreatePatients < ActiveRecord::Migration[6.1]
  def change
    create_table :patients do |t|
      t.string :name
      t.integer :account_id
      t.integer :credit_rating
      t.timestamps
    end
  end
end
