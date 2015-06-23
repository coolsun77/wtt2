class Milestone < ActiveRecord::Base
  belongs_to :game
  validates :milestone, presence: true
end
