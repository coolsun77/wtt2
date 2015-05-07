class Vpp2 < ActiveRecord::Migration
  def change
  		add_column :qaeods, :N_bug_audio, :decimal, default: 0
	add_column :qaeods, :N_bug_text, :decimal, default: 0
	add_column :qaeods, :N_bug_fastfix, :decimal, default: 0
	add_column :qaeods, :N_bug_functional, :decimal, default: 0
		add_column :qaeods, :N_bug_audio_N, :decimal, default: " "
	add_column :qaeods, :N_bug_text_N, :decimal, default: " "
	add_column :qaeods, :N_bug_fastfix_N, :decimal, default: " "
	add_column :qaeods, :N_bug_functional_N, :decimal, default: " "
  end
end
