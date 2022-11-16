class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.integer :priority_level
      t.date :deadline
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
