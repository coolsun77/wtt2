class MilestonesController < ApplicationController
	def create
    @game = Game.find(params[:game_id])
    @milestone = @game.milestones.create(milestone_params)
    redirect_to game_path(@game)
  end
 
  private
    def milestone_params
      params.require(:milestone).permit!
    end
end
