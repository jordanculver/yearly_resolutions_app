class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.integer :category_id
      t.string :name
      t.text :description
      t.integer :difficulty_level
      t.boolean :completed
      t.string :status

      t.timestamps
    end
  end
end
