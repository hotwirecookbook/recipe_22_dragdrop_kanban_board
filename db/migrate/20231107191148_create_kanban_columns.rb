class CreateKanbanColumns < ActiveRecord::Migration[7.1]
  def change
    create_table :kanban_columns do |t|
      t.string :title
      t.belongs_to :kanban_board, null: false, foreign_key: true
      t.string :position

      t.timestamps
    end
  end
end
