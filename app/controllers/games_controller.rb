class GamesController < ApplicationController
  before_action :set_game, only: %i[show edit update destroy]

  # List of all the games available in the app
  def index
    @games = Game.all
  end

  # Show page of a specific game
  def show; end

  # Upload a new game
  def new
    @game = Game.new
  end

  # Save uploaded game
  def create
    @game = Game.new(game_params)
    @game.save!
    redirect_to games_path
  #   # @game.user = current_user
  #   if @game.save
  #     redirect_to user_path(@user)
  #   else
  #     render "users/show", status: :unprocessable_entity
  #   end
  end

  # # Edit a game
  # def edit; end

  # # Save a game update
  # def update
  #   @game.update(game_params)
  #   # redirect_to game_path(@game)
  # end

  # # Delete a game
  def destroy
    @game.destroy
    redirect_to user_path(@game), status: :see_other
  end

  private

  def game_params
    params.require(:game).permit(:name, :photo, :platform, :price)
  end

  def set_game
    @game = Game.find(params[:id])
  end
end
