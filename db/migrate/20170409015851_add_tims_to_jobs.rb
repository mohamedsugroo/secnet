class AddTimsToJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :start_hour, :time
    add_column :jobs, :end_hour, :time
  end
end
