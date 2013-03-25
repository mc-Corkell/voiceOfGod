
class Round < ActiveRecord::Base
  belongs_to :slam
  has_many :scores
  has_many :participants, :through => :scores
  validates :numPoets, :allow_nil => true, :numericality => { :only_integer => true }
  validates :roundNumber, :presence => true, :numericality => { :only_integer => true }
  attr_accessible :slam_id, :roundNumber 
end
