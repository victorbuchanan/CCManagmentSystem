class CreateUserLogs < ActiveRecord::Migration
  def change
    create_table :user_logs do |t|
      t.integer :userid
      t.string :transactionDate
      t.float :billAmount
      t.boolean :paid
      t.integer :adminId

      t.timestamps
    end
  end
end
