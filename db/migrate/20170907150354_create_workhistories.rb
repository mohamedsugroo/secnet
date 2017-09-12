class CreateWorkhistories < ActiveRecord::Migration[5.0]
  def change
    create_table :workhistories do |t|
      t.string :company_name
      t.string :your_role
      t.string :start_date
      t.string :end_date
      t.text   :note
      t.references :user, foreign_key: true
      t.references :contractor, foreign_key: true

      t.timestamps
    end
  end
end
