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
    @game.user = current_user
    if @game.save
      redirect_to user_path(current_user)
    else
      render "games/new", status: :unprocessable_entity
    end
  end

  # Edit a game
  def edit; end

  # Save a game update
  def update
    if @game.update(game_params)
      redirect_to user_path(current_user)
    else
      render "games/edit", status: :unprocessable_entity
    end
  end

  # Delete a game
  def destroy
    @game.destroy
    redirect_to user_path(current_user), status: :see_other
  end

  def map
    @games = Game.all
    @markers = @games.geocoded.map do |game|
      {
        lat: game.latitude,
        lng: game.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {game: game}),
        marker_html: render_to_string(partial: "marker")
      }
    end
  end

  private

  def game_params
    params.require(:game).permit(:name, :photo, :platform, :price)
  end

  def set_game
    @game = Game.find(params[:id])
  end
end
