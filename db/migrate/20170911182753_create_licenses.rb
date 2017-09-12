class CreateLicenses < ActiveRecord::Migration[5.0]
  def change
    create_table :licenses do |t|
      t.string :ltype
      t.string :lNumbe
      t.date :exdate

      t.timestamps
    end
  end
end
