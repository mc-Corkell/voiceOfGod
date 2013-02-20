class User < ActiveRecord::Base
   has_many :slams
   validates :userName, :presence => true, { :uniqueness => true, :case_senstitive => false }
end
