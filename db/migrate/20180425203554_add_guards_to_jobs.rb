class AddGuardsToJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :number_of_guards, :number
  end
end
