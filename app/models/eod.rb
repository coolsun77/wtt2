class Eod < ActiveRecord::Base
  belongs_to :user
  has_many :qaeods
  accepts_nested_attributes_for :qaeods
  has_many :loceods
  accepts_nested_attributes_for :loceods
end
