board = KanbanBoard.create!(title: 'Mailclipper')

todo = KanbanColumn.create!(title: 'To Do', kanban_board: board)
KanbanColumn.create!(title: 'Doing', kanban_board: board)
KanbanColumn.create!(title: 'Staging', kanban_board: board)
KanbanColumn.create!(title: 'Done', kanban_board: board)

KanbanCard.create!(title: 'Add public profiles', kanban_column: todo, position: 1)
KanbanCard.create!(title: 'Add bookmark notes', kanban_column: todo, position: 2)
KanbanCard.create!(title: 'Add chatgpt categorization', kanban_column: todo, position: 3)