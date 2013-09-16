class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
    @user.build_license
  end

  def create
    @user = User.new(user_params)

    if @user.save
      flash[:notice]= "User has been saved."
      redirect_to root_url
    else
      flash[:notice]="User has not been created."
      render action: "new"
     end
  end

private

  def user_params
    params.require(:user).permit(:name, :email,
      license_attributes:
      [:number, :state])
  end
end
