class CreateEods < ActiveRecord::Migration
  def change
    create_table :eods do |t|
      t.date :date
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :eods, :users
  end
end
