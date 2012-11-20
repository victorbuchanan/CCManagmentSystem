class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :userid
      t.string :streetNum
      t.string :street
      t.string :city
      t.string :postalcode
      t.string :province

      t.timestamps
    end
  end
end
