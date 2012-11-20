class RemoveTimeBilledToBillingInfo < ActiveRecord::Migration
  def up
    remove_column :billing_infos, :time_billed
  end

  def down
    add_column :billing_infos, :time_billed, :float
  end
end
