class AddNamesToEmps < ActiveRecord::Migration
  def change
    add_column :emps, :firstname, :string
    add_column :emps, :lastname, :string
  end
end
