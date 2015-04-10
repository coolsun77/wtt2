class Eod < ActiveRecord::Base
  belongs_to :user
  has_many :qaeods
end
