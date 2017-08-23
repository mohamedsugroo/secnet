class AddUserCustomInfoToContractors < ActiveRecord::Migration[5.0]
  def change
    add_column :contractors, :uref, :string
    add_column :contractors, :preferred_hourly_rate, :string
  end
end
