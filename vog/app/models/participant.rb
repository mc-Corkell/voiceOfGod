class Participant < ActiveRecord::Base
  attr_accessible :poet, :slam, :letterOrder
  belongs_to :poet
  belongs_to :slam
  belongs_to :round
  has_many :scores 
  has_many :rounds, :through => :scores
end
