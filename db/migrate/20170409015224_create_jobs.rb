class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.string :start_date
      t.string :end_date
      t.integer :hourly_rate
      t.integer :number_of_hourse
      t.boolean :fixed_price
      t.boolean :negotiable_price

      t.timestamps
    end
  end
end
