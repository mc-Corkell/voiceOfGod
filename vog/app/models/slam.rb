class Slam < ActiveRecord::Base
  belongs_to :user
  attr_accessible :name, :user, :location, :date, :hostFirstName, :hostLastName, :numWinners, :numParticipants
  has_many :rounds, :dependent => :delete_all
  validates :name, :presence => true, :length => {:minimum => 3}, :uniqueness => {:case_senstitive => false}

  has_many :participants, :dependent => :delete_all
  after_create :create_first_round 

  #automatically creates first round
  def create_first_round
    Round.create(:slam_id => self.id, :roundNumber => 1)
  end 

end
