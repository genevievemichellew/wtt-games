class GamesController < ApplicationController
  before_action :set_game, only: %i[show edit update destroy]
  skip_before_action :authenticate_user!, only: %i[index map]
  # List of all the games available in the app
  def index
    if params[:query].present?
      sql_query = "name ILIKE :query OR platform ILIKE :query"
      @games = Game.where(sql_query, query: "%#{params[:query]}%")
    else
      @games = Game.all
    end
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
        info_window_html: render_to_string(partial: "info_window", locals: { game: game }),
        marker_html: render_to_string(partial: "marker")
      }
    end
  end

  def show_map
    @game = Game.find(params[:game_id])
    @markers = [{
      lat: @game.latitude,
      lng: @game.longitude,
      info_window_html: render_to_string(partial: "info_window", locals: { game: @game }),
      marker_html: render_to_string(partial: "marker")
    }]
  end

  private

  def game_params
    params.require(:game).permit(:name, :picture, :description, :platform, :price)
  end

  def set_game
    @game = Game.find(params[:id])
  end
end
