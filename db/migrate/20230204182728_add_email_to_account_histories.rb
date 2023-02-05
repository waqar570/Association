class AddEmailToAccountHistories < ActiveRecord::Migration[6.1]
  def change
    add_column :account_histories, :email, :string
  end
end
