class UsersController < ApplicationController
  def hello 
    
  end  

  def new
		@user = User.new
  end
  
	def create
		@user = User.new(user_params)
		@user.save
	end

	def edit
		@user = User.find(params[:id])
	end
	
	private
		# ストロングパラメータ
		def user_params
			paramas.requie(:user).permit(:email)
		end
end
