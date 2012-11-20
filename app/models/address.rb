class Address < ActiveRecord::Base
  attr_accessible :city, :postalcode, :province, :street, :streetNum, :userid

  #----------Associations --------------------------------------

  belongs_to :user

end
