class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :userid

  #---Associations--------------------------------------------------------
   has_one :address
   has_many :user_log
   has_many :billing_infos


end
