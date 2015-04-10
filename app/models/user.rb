class User < ActiveRecord::Base
	has_many :eods
	has_many :qaeods, through: :eods
end
