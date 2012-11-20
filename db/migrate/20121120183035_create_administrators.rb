class CreateAdministrators < ActiveRecord::Migration
  def change
    create_table :administrators do |t|
      t.integer :userid
      t.integer :employeeNum
      t.integer :adminPin

      t.timestamps
    end
  end
end
