  class UsersController < ApplicationController

      def show
        @user = User.find(params[:id])
           @feedbacks = @user.feedbacks
          @purchases = @user.purchases
      end

      def new
        @user = User.new
  
    end
      
     def create
        secure_params = params.require(:user).permit(:name, :email, 
                                  :password, :password_confirmation)
        @user = User.new(secure_params)
        if @user.save
             remember @user       #  NEW LINE
      flash[:success] = "Welcome to MusicMarket!"    # NEW LINE
           redirect_to root_path
        else
 render 'new' 
        end
      end
      
       def edit
    @user = User.find(params[:id])
  end
      
        def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
                  redirect_to current_user

    else
      render 'edit'
    end
  end
      
      private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
      
      
  end