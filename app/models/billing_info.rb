class BillingInfo < ActiveRecord::Base
  attr_accessible :cardtype, :ccexpdate, :ccnumber, :userid

  #-------------Associations ----------------------------------
  belongs_to :user



end
