class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  	# The next ruby gem is used to find and correct bugs as the program is developing in te console. To release the debugger Ctrl + D. See Hartl Tutorial section 7.1.2 for more info :).
  	# debugger
  end

  def new
  	@user = User.new
  end


  def create
  	@user = User.new(user_params)
  	if @user.save
      flash[:success] = "Welcome to the Sample App"
      redirect_to @user
      # Why does @user redirects to users/show/id?
  	else
  		render 'new'
  	end
  end

  private

	  def user_params
	  	params.require(:user).permit(:name, :email, :password, :password_confirmation)
	  end

end
