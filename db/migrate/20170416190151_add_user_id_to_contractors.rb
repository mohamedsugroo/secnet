class AddUserIdToContractors < ActiveRecord::Migration[5.0]
  def change
    add_column :contractors, :user_id, :integer
    add_index :contractors, :user_id, unique: true
  end
end
