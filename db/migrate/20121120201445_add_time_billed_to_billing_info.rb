class AddTimeBilledToBillingInfo < ActiveRecord::Migration
  def change
    add_column :billing_infos, :time_billed, :float
  end
end
