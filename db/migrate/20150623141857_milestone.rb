class Milestone < ActiveRecord::Migration
  def change
  	add_column :eods, :milestone, :decimal, default: 0
  end
end
