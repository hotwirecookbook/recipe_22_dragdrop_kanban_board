class CreateKanbanCards < ActiveRecord::Migration[7.1]
  def change
    create_table :kanban_cards do |t|
      t.string :title
      t.belongs_to :kanban_column, null: false, foreign_key: true
      t.integer :position

      t.timestamps
    end
  end
end
