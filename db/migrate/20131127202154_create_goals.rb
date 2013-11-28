class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.integer :category_id
      t.string :name
      t.text :description
      t.text :progress_post
      t.string :progress_photo
      t.integer :difficulty_level
      t.boolean :completion
      t.integer :milestones

      t.timestamps
    end
  end
end
