class UserLog < ActiveRecord::Base
  attr_accessible :adminId, :billAmount, :paid, :transactionDate, :userid

  #------------Association -----------------------------

  belongs_to :user

end
