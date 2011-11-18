class AddLongLatToEmps < ActiveRecord::Migration
  def change
    add_column :emps, :latitude, :float
    add_column :emps, :longitude, :float
    add_column :emps, :gmaps, :boolean
  end
end
