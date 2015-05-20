class Eod < ActiveRecord::Base
  belongs_to :user
  has_many :qaeods
  accepts_nested_attributes_for :qaeods
  has_many :loceods
  accepts_nested_attributes_for :loceods


 validate :sumoftime
 
	  def sumoftime
	    	sumot =  0
	    	#at =params[:user_id]
	    	sumot = self.sumott
	      	#at.each do |attr|
	      	#	sumot = sumot + attr[:Pre_QA_H] +attr[:Review_H] +attr[:QA_H] +attr[:Bug_Management_H] +attr[:Audio_QA_H] +attr[:N_Review_H] +attr[:N_QA_H] +attr[:N_Bug_Management_H] +attr[:Project_Management_H] +attr[:Other_H] +attr[:mis_meeting] +  attr[:mis_training] +attr[:mis_others] +attr[:ab_sickleave] +attr[:ab_shiftleave] +attr[:ab_annualleave] +attr[:ab_holiday] +attr[:ab_others] +attr[:vpp_H] +  attr[:N_vpp] +  attr[:N_vpp_H]
	      	#end


	    	errors.add(:base, "total hours should be 8-24") unless (  sumot >=8  && sumot <=24  )
	  end

	
	  



	
end
