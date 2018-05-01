class CreateContractors < ActiveRecord::Migration[5.0]
  def change
    create_table :contractors do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.date :dob
      t.string :firstline_address
      t.string :postcode
      t.string :city
      t.string :county
      t.string :country
      t.string :mobile
      t.string :utr
      t.string :contracts_id
      t.boolean :right_to_work_uk
      t.text :bio

      t.timestamps
    end
  end
end
