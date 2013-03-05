class Participant < ActiveRecord::Base
  attr_accessible :poet, :slam
  belongs_to :poet
  belongs_to :slam
  
end
