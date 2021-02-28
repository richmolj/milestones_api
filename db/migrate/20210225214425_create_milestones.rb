class CreateMilestones < ActiveRecord::Migration[6.1]
  def change
    create_table :milestones do |t|
      t.string :name
      t.integer :epic_id

      t.timestamps
    end
  end
end
