class Qalocms < ActiveRecord::Migration
  def change
  	add_column :loceods, :milestone, :decimal, default: 0
  	add_column :qaeods, :milestone, :decimal, default: 0
  end
end
