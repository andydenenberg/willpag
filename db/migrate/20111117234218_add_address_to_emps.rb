class AddAddressToEmps < ActiveRecord::Migration
  def change
    add_column :emps, :address, :string
    add_column :emps, :city, :string
    add_column :emps, :country, :string
    add_column :emps, :phone, :string
  end
end
