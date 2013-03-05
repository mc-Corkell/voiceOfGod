class Round < ActiveRecord::Base
  belongs_to :slam
  has_many :scores
  has_many :poets, :through => :scores
  validates :numPoets, :numericality => { :only_integer => true }
  validates :roundNumber, :presence => true, :numericality => { :only_integer => true }
end
