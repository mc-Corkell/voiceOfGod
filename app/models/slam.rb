class Slam < ActiveRecord::Base
  belongs_to :user
  attr_accessible :user, :location, :date,
         :hostFirstName, :hostLastName, :numWinners
  has_many :rounds, dependent => :delete_all
  validates :name, :presence => true, :length => {:minimum => 3}, { :uniqueness => true, :case_senstitive => false }
end
