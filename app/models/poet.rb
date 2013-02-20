class Poet < ActiveRecord::Base
  has_many :scores
  has_many :rounds, :through => scores
  validates :poetName, :presence => true, :uniqueness => true
end
