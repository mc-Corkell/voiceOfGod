class Member < ActiveRecord::Base
  attr_accessible :timestamps
  belongs_to :user
  belongs_to :group
end
