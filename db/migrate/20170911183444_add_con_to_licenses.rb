class AddConToLicenses < ActiveRecord::Migration[5.0]
  def change
    add_column :licenses, :contractor_id, :integer
    add_column :licenses, :user_id, :integer
  end
end
