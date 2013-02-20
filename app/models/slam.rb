class Slam < ActiveRecord::Base
  belongs_to: User
  has_many :rounds, dependent => :delete_all
  validates :name, :presence => true, :length => {:minimum => 3}, { :uniqueness => true, :case_senstitive => false }
end
