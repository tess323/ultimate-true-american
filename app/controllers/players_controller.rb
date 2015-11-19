class PlayersController < ApplicationController
  before_action :is_authenticated?
  def index
    @players = Player.all
  end
 
  def create
    # same view as create game view, allows user to add player usernames to game
    Player.create player_params
    redirect_to players_path
  end

  def new
  end

  # def edit 
  # end

  # def show
  # end

  # def update
  #    # when users change their alias on the join game page (game index)
  # end

  def destroy
    # delete a player from current game
    Player.find(params[:id]).delete
    redirect_to players_path
  end

  def player_params
    params.require(:player).permit(:username, :alias, :beers)
  end

end
