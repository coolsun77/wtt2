class CreateLoceods < ActiveRecord::Migration
  def change
    create_table :loceods do |t|
      t.references :eod, index: true

      t.timestamps null: false
    end
    add_foreign_key :loceods, :eods
  end
end
