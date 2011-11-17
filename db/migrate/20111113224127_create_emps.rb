class CreateEmps < ActiveRecord::Migration
  def change
    create_table :emps do |t|
      t.string :name

      t.timestamps
    end
  end
end
