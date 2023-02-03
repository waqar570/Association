class CreatePictures < ActiveRecord::Migration[6.1]
  def change
    create_table :pictures do |t|
      t.string :name
      t.integer :imageable_id
      t.string :imageable_type

      t.timestamps
      t.references :imageable, polymorphic: true
    end
  end
end
