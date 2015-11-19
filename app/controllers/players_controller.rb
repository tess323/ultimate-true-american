class PlayersController < ApplicationController
  # def index
  # end
  before_action :current_user
  def create
    # same view as create game view, allows user to add player usernames to game
  
  Player.create player_params
  end

  def new
    @player = player.new
  end

  # def edit 
  # end

  # def show
  # end

  def update
     # when users change their alias on the join game page (game index)
  end

  def destroy
    # delete a player from current game
     Player.find(params[:id]).delete
    redirect_to player_path
  end

  private
  def player_params
    params.require(:player).permit(:username, :alias, :beers, :game_id)
  end
end
