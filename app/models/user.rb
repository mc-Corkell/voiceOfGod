class User < ActiveRecord::Base
   has_many :slams
   has_many :groups, :through => :member
   attr_accessible :userName, :location, :password, :email
   validates :userName, :presence => true, :uniqueness => {:case_senstitive => false}
   validates :password, :presence => true
   validates :email, :presence => true 
end
