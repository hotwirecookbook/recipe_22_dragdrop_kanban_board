class KanbanBoardsController < ApplicationController
  def index
    @boards = KanbanBoard.all
  end

  def show
    @board = KanbanBoard.includes(kanban_columns: :kanban_cards).find(params[:id])
  end
end