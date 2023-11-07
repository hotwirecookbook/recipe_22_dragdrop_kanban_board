class KanbanCardsController < ApplicationController
  def update
    @card = KanbanCard.find(params[:id])
    @card.update(card_params)
  end

  private

  def card_params
    params.require(:kanban_card).permit(:kanban_column_id, :position)
  end
end