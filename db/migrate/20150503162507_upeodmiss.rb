class Upeodmiss < ActiveRecord::Migration
  def change
  	add_column :eods, :miss, :BOOLEAN, default: 0
  end
end
