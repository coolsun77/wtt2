class CreateMilestones < ActiveRecord::Migration
  def change
    create_table :milestones do |t|
      t.string :milestone
      t.date :startdate
      t.date :enddate
      t.references :game, index: true

      t.timestamps null: false
    end
    add_foreign_key :milestones, :games
  end
end
