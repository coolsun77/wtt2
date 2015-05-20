class Qaeod < ActiveRecord::Base
	belongs_to :eod

	validate :checknotes
	def checknotes
	  	if self.mis_others.to_i > 0
	  		errors.add(:base, ">>>> Miscellaneous Others' comments should be more than 4 bytes") unless (  self.mis_others_N.length>=4   )
	  	end
	  end


end
