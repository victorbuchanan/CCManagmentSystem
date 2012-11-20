class CreateBillingInfos < ActiveRecord::Migration
  def change
    create_table :billing_infos do |t|
      t.integer :userid
      t.string :cardtype
      t.string :ccnumber
      t.string :ccexpdate

      t.timestamps
    end
  end
end
