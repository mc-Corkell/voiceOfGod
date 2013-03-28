class Slam < ActiveRecord::Base
  belongs_to :user
  attr_accessible :name, :user, :location, :timeLimit, :date, :hostFirstName, :hostLastName, :numWinners, :numParticipants
  has_many :rounds, :dependent => :delete_all
  has_many :participants, :dependent => :delete_all
  after_create :create_first_round 

  validates :name, :presence => true, :length => {:minimum => 3}, :uniqueness => {:case_senstitive => false}
  validates :numParticipants, :presence => true
  validates :timeLimit, :numericality => true

  #automatically creates 4 rounds for the slam
  def create_first_round
   for i in 1..4	
    Round.create(:slam_id => self.id, :roundNumber => i)
   end
  end 

end
