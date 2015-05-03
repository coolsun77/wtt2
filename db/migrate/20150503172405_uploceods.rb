class Uploceods < ActiveRecord::Migration
  def change
  	add_column :loceods, :familiarization, :decimal, default: 0
  	add_column :loceods, :Review, :decimal, default: 0
	add_column :loceods, :translation, :decimal, default: 0
	add_column :loceods, :bugfix, :decimal, default: 0
	add_column :loceods, :audioonsite, :decimal, default: 0
	add_column :loceods, :audiodelivery, :decimal, default: 0
	add_column :loceods, :N_Review, :decimal, default: 0
	add_column :loceods, :N_translation, :decimal, default: 0
	add_column :loceods, :N_bugfix, :decimal, default: 0
	add_column :loceods, :polish, :decimal, default: 0
	add_column :loceods, :Project_Management, :decimal, default: 0
	add_column :loceods, :Other, :decimal, default: 0
	add_column :loceods, :familiarization_H, :decimal, default: 0
	add_column :loceods, :Review_H, :decimal, default: 0
	add_column :loceods, :translation_H, :decimal, default: 0
	add_column :loceods, :bugfix_H, :decimal, default: 0
	add_column :loceods, :audiodelivery_H, :decimal, default: 0
	add_column :loceods, :N_Review_H, :decimal, default: 0
	add_column :loceods, :N_translation_H, :decimal, default: 0
	add_column :loceods, :N_bugfix_H, :decimal, default: 0
	add_column :loceods, :Project_Management_H, :decimal, default: 0
	add_column :loceods, :Other_H, :decimal, default: 0
	add_column :loceods, :familiarization_N, :string, default: " "
	add_column :loceods, :translation_N, :string, default: " "
	add_column :loceods, :Review_N, :string, default: " "
	add_column :loceods, :bugfix_N, :string, default: " "
	add_column :loceods, :audiodelivery_N, :string, default: " "
	add_column :loceods, :N_Review_N, :string, default: " "
	add_column :loceods, :N_translation_N, :string, default: " "
	add_column :loceods, :N_bugfix_N, :string, default: " "
	add_column :loceods, :audioonsite_H, :decimal, default: 0
	add_column :loceods, :audioonsite_N, :string, default: " "
	add_column :loceods, :polish_H, :decimal, default: 0
	add_column :loceods, :polish_N, :string, default: " "
	add_column :loceods, :Project_Management_N, :string, default: " "
	add_column :loceods, :Other_N, :string, default: " "
	add_column :loceods, :game_id, :integer

  end
end
