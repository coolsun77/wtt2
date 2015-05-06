class Eodothers < ActiveRecord::Migration
  def change
  	add_column :loceods, :mis_meeting, :decimal, default: 0
  	add_column :loceods, :mis_training, :decimal, default: 0
	add_column :loceods, :mis_others, :decimal, default: 0
	add_column :loceods, :ab_sickleave, :decimal, default: 0
	add_column :loceods, :ab_shiftleave, :decimal, default: 0
	add_column :loceods, :ab_annualleave, :decimal, default: 0
	add_column :loceods, :ab_holiday, :decimal, default: 0
	add_column :loceods, :ab_others, :decimal, default: 0
	
	add_column :loceods, :mis_meeting_N, :string, default: " "
	add_column :loceods, :mis_training_N, :string, default: " "
	add_column :loceods, :mis_others_N, :string, default: " "
	add_column :loceods, :ab_sickleave_N, :string, default: " "
	add_column :loceods, :ab_shiftleave_N, :string, default: " "
	add_column :loceods, :ab_annualleave_N, :string, default: " "
	add_column :loceods, :ab_holiday_N, :string, default: " "
	add_column :loceods, :ab_others_N, :string, default: " "

	add_column :qaeods, :mis_meeting, :decimal, default: 0
  	add_column :qaeods, :mis_training, :decimal, default: 0
	add_column :qaeods, :mis_others, :decimal, default: 0
	add_column :qaeods, :ab_sickleave, :decimal, default: 0
	add_column :qaeods, :ab_shiftleave, :decimal, default: 0
	add_column :qaeods, :ab_annualleave, :decimal, default: 0
	add_column :qaeods, :ab_holiday, :decimal, default: 0
	add_column :qaeods, :ab_others, :decimal, default: 0
	
	add_column :qaeods, :mis_meeting_N, :string, default: " "
	add_column :qaeods, :mis_training_N, :string, default: " "
	add_column :qaeods, :mis_others_N, :string, default: " "
	add_column :qaeods, :ab_sickleave_N, :string, default: " "
	add_column :qaeods, :ab_shiftleave_N, :string, default: " "
	add_column :qaeods, :ab_annualleave_N, :string, default: " "
	add_column :qaeods, :ab_holiday_N, :string, default: " "
	add_column :qaeods, :ab_others_N, :string, default: " "
  end
end
