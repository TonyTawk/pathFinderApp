class UsersController < ApplicationController


  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
    @user.build_location
    @user.telephones.build
    @user.additional_emails.build
  end

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to users_path, notice: 'User was successfully created.' }
      else
        render "new"
      end
    end
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :location_attributes => [:address , :user_id], :additional_emails_attributes => [:email, :user_id], :telephones_attributes => [:number, :cc, :phone_type, :user_id])
  end

end
