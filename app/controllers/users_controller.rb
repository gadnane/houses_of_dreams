class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
  	@user = User.find(params[:id])
  end

   def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to Houses of Dreams!"
      redirect_to @user
    else
      render 'new'
    end
  end

  private

    def user_params
      params.require(:user).permit(:username, :email, :firstname, :lastname, :maxrent, :password,
                                   :password_confirmation)
    end

end
