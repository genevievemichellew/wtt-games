class RentsController < ApplicationController
  def new
    # We need @game in our `simple_form_for`
    @game = Game.find(params[:game_id])
    @rent = Rent.new
  end

  def create
    @rent = Rent.new(rent_params)
    @rent.user = current_user
    @rent.game = Game.find(params[:game_id])
    @rent.save
    redirect_to user_path(current_user)
  end

  def update
    @rent = Rent.find(params[:id])
    @rent.update(status: params[:status])
    redirect_to user_path(current_user)
  end

  private

  def rent_params
    params.require(:rent).permit(:game_id, :user_id, :start_date, :end_date, :status)
  end
end
