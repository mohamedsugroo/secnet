class AddSearchableToJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :searbales_keywords, :string
    add_column :jobs, :location, :string
    add_column :jobs, :postcode, :string
    add_column :jobs, :address, :string
    add_column :jobs, :city, :string
  end
end
