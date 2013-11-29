class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.integer :resolution_id
      t.string :name
      t.boolean :difficulty_level
      t.boolean :time_managing_message
      t.boolean :milestones

      t.timestamps
    end
  end
end
