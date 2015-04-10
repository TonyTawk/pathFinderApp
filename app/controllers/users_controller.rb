class UsersController < ApplicationController


  def index
  end

  def show
     @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @player.save
        format.html {redirect_to root_path, notice: 'User was successfully created.' }
      else
        format.html {redirect_to root_path, notice: 'User was notttttt successfully created.' }
      end
    end
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

end