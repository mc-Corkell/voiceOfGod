class Score < ActiveRecord::Base
  belongs_to :round
  belongs_to :participant
  attr_accessible :score1,  :score2, :score3, :score4, :score5,
             :time, :has_time_deduction, :time_deduction, :disqualified
  validates :finalScore, :presence => true
  validates :score1, :numericality => { :greater_than_or_equal_to => 0.0 },
       :numericality => { :less_than_or_equal_to => 10.0 }, :allow_blank => true
  validates :score2, :numericality => { :greater_than_or_equal_to => 0.0 },
       :numericality => { :less_than_or_equal_to => 10.0 }, :allow_blank => true
  validates :score3, :numericality => { :greater_than_or_equal_to => 0.0 },
       :numericality => { :less_than_or_equal_to => 10.0 }, :allow_blank => true
  validates :score4, :numericality => { :greater_than_or_equal_to => 0.0 },
       :numericality => { :less_than_or_equal_to => 10.0 }, :allow_blank => true
  validates :score5, :numericality => { :greater_than_or_equal_to => 0.0 },
       :numericality => { :less_than_or_equal_to => 10.0 }, :allow_blank => true

=begin 
10.0 should be a variable that,
 somewhere deep in their preferences,
 the user can change if they really want to
=end 
 end
