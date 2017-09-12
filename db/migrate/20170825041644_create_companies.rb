class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.text :discription
      t.string :company_ref
      t.string :company_token
      t.integer :user_id
      t.string :city
      t.string :postcode
      t.string :country

      t.timestamps
    end
  end
end
