class CreateQaeods < ActiveRecord::Migration
  def change
    create_table :qaeods do |t|
      t.references :eod, index: true

      t.timestamps null: false
    end
    add_foreign_key :qaeods, :eods
  end
end
