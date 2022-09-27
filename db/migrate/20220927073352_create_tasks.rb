class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :title, null: false
      t.string :body, default: ''
      t.boolean :is_completed, default: false
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
