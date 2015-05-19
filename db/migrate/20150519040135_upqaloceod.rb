class Upqaloceod < ActiveRecord::Migration
  def change
  	add_column :qaeods, :date, :date
  	add_column :loceods, :date, :date
  end
end
