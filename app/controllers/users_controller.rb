class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def edit
  end

  def show
    @user = User.find(params[:id])
    @books = @user.books
  end
  
  private

  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end
  
end
