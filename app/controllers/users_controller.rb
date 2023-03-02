class UsersController < ApplicationController
  before_action :set_user, only: %i[show]

  def show
    @rents = Rent.all.where(user: current_user)
    @received_rents = current_user.received_rents
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name)
  end
end
