class PlayersController < ApplicationController
before_action :is_authenticated?
  # def index
  # end

  def create
    # same view as create game view, allows user to add player usernames to game
    player = Player.create player_params
    player.update_columns(game_id: params[:game_id])
    player.update_columns(beers: '0')
    redirect_to "/game/"+ params[:game_id]
  end

  def new
    @player = player.new
  end

  # def edit 
  # end

  # def show
  # end

  def update
      #Code to update "beers drank"
      User.find(@current_user.id)
      user.beers =+ 1
      user.save

      # player = player.beers(beers: params[:game_id] =+ 1)
      # redirect_to "/game/"+ params[:game_id]
  end

  def destroy
    # delete a player from current game
    Player.find(params[:id]).delete
    redirect_to "/game/"+ session[:game_id].to_s
  end

  private
  def player_params
    params.require(:player).permit(:username, :alias, :beers, :game_id)
  end
end