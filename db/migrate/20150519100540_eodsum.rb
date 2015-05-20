class Eodsum < ActiveRecord::Migration
  def change
  	add_column :eods, :sumott, :decimal, default: 0
  end
end
