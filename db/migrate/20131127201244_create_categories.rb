class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.integer :resolution_id
      t.string :name
      t.boolean :progress_post
      t.boolean :progress_photo
      t.boolean :difficulty_level
      t.boolean :time_managing_message
      t.boolean :completion_box
      t.boolean :milestones

      t.timestamps
    end
  end
end
