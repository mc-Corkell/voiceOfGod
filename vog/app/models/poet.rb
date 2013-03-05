class Poet < ActiveRecord::Base
  has_many :scores
  has_many :rounds, :through => :scores
  attr_accessible :poetName, :phoneNumber
  validates :poetName, :presence => true, :uniqueness => true
end
