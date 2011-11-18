class AddZipToEmps < ActiveRecord::Migration
  def change
    add_column :emps, :zip, :string
  end
end
