class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :ssn
      t.string :department
      t.integer :salary

      t.timestamps
    end
  end
end
