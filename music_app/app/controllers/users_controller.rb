class UsersController < ApplicationController

  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = 'Successfully LOGGED IN'
      redirect_to "/users/" + @user.id.to_s
    else
      flash.now[:errors] = @user.errors.full_messages
      render :new
    end
  end

  def show
    render :show
  end

  private
    def user_params
      params.require(:user).permit(:email, :password)
    end
end