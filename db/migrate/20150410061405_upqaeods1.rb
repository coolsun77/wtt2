class Upqaeods1 < ActiveRecord::Migration
  def change
  	add_column :qaeods, :Pre_QA, :decimal, default: 0
	add_column :qaeods, :Review, :decimal, default: 0
	add_column :qaeods, :QA, :decimal, default: 0
	add_column :qaeods, :Bug_Management_report, :decimal, default: 0
	add_column :qaeods, :Bug_Management_retest, :decimal, default: 0
	add_column :qaeods, :Audio_QA, :decimal, default: 0
	add_column :qaeods, :N_Review, :decimal, default: 0
	add_column :qaeods, :N_QA, :decimal, default: 0
	add_column :qaeods, :N_Bug_Management_report, :decimal, default: 0
	add_column :qaeods, :N_Bug_Management_retest, :decimal, default: 0
	add_column :qaeods, :Project_Management, :decimal, default: 0
	add_column :qaeods, :Other, :decimal, default: 0
	add_column :qaeods, :Pre_QA_H, :decimal, default: 0
	add_column :qaeods, :Review_H, :decimal, default: 0
	add_column :qaeods, :QA_H, :decimal, default: 0
	add_column :qaeods, :Bug_Management_H, :decimal, default: 0
	add_column :qaeods, :Audio_QA_H, :decimal, default: 0
	add_column :qaeods, :N_Review_H, :decimal, default: 0
	add_column :qaeods, :N_QA_H, :decimal, default: 0
	add_column :qaeods, :N_Bug_Management_H, :decimal, default: 0
	add_column :qaeods, :Project_Management_H, :decimal, default: 0
	add_column :qaeods, :Other_H, :decimal, default: 0
	add_column :qaeods, :Pre_QA_N, :string, default: " "
	add_column :qaeods, :Review_N, :string, default: " "
	add_column :qaeods, :QA_N, :string, default: " "
	add_column :qaeods, :Bug_Management_N, :string, default: " "
	add_column :qaeods, :Audio_QA_N, :string, default: " "
	add_column :qaeods, :N_Review_N, :string, default: " "
	add_column :qaeods, :N_QA_N, :string, default: " "
	add_column :qaeods, :N_Bug_Management_N, :string, default: " "
	add_column :qaeods, :Project_Management_N, :string, default: " "
	add_column :qaeods, :Other_N, :string, default: " "
	add_column :qaeods, :game_id, :integer
  end
end
