class Group < ActiveRecord::Base
  attr_accessible :location, :name, :webpage
  has_many :users, :through => :members
  validates :name, :presence => true, :length => {:minimum => 3}, :uniqueness => {:case_senstitive => false}
end
