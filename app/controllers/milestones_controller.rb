class MilestonesController < ApplicationController
  def create
    @game = Game.find(params[:game_id])
    @milestone = @game.milestones.create(milestone_params)
    redirect_to game_path(@game)
  end

  def edit
     @milestone = Milestone.find(params[:id]) 
    @game = @milestone.game
    # render plain: @milestone.inspect
  end
 	
 def update
 	@milestone = Milestone.find(params[:id])
 	if @milestone.update(milestone_params)
        redirect_to @milestone.game
      else
        render 'edit'
     end
 end


  private
    def milestone_params
      params.require(:milestone).permit!
    end
end
