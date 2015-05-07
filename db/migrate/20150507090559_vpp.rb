class Vpp < ActiveRecord::Migration
  def change
  	add_column :loceods, :vpp, :decimal, default: 0
  	add_column :loceods, :vpp_H, :decimal, default: 0
  	add_column :loceods, :N_vpp, :decimal, default: 0
  	add_column :loceods, :N_vpp_H, :decimal, default: 0


	
	add_column :loceods, :vpp_N, :string, default: " "
	add_column :loceods, :N_vpp_N, :string, default: " "


	add_column :qaeods, :vpp, :decimal, default: 0
  	add_column :qaeods, :vpp_H, :decimal, default: 0
  	add_column :qaeods, :N_vpp, :decimal, default: 0
  	add_column :qaeods, :N_vpp_H, :decimal, default: 0
	add_column :qaeods, :bug_audio, :decimal, default: 0
	add_column :qaeods, :bug_text, :decimal, default: 0
	add_column :qaeods, :bug_fastfix, :decimal, default: 0
	add_column :qaeods, :bug_functional, :decimal, default: 0
	
	add_column :qaeods, :vpp_N, :string, default: " "
	add_column :qaeods, :N_vpp_N, :string, default: " "
	add_column :qaeods, :bug_audio_N, :decimal, default: " "
	add_column :qaeods, :bug_text_N, :decimal, default: " "
	add_column :qaeods, :bug_fastfix_N, :decimal, default: " "
	add_column :qaeods, :bug_functional_N, :decimal, default: " "


  end
end
