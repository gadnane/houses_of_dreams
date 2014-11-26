class UsersController < ApplicationController
  before_action :logged_in_user, only: [:show]
  before_action :agent_user,     only: [:new, :create]

  def new
    @user = User.new
  end

  def show
  	@user = User.find(params[:id])
    @properties = @user.properties.paginate(page: params[:page])
  end

   def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to Houses of Dreams"
      redirect_to @user
    else
      render 'new'
    end
  end

  private

    def user_params
      params.require(:user).permit(:username, :email, :firstname, :lastname, :maxrent, :password,
                                   :password_confirmation, :agent, :owner, :customer)
    end

end
