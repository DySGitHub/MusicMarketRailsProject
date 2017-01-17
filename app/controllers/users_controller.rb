  class UsersController < ApplicationController
  before_action :logged_in_user, only: [:index, :edit, :update, :show]
        before_action :correct_user,   only: [:edit, :update]

 
      def show
        @user = User.find(params[:id])
<<<<<<< HEAD
           @feedbacks = @user.feedbacks
          @purchases = @user.purchases
                    @acc_purchases = @user.acc_purchases
          @piano_purchases = @user.piano_purchases


      end
      
     

      def index
              @users = User.all

=======
           @microposts = @user.microposts
>>>>>>> 513d3798b282aa688b69d699e9b0a49ca679abf0
      end
      
      

      def new
        @user = User.new
  
    end
      
      def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless @user == current_user
    end
      
     def create
        secure_params = params.require(:user).permit(:name, :email, 
                                  :password, :password_confirmation)
        @user = User.new(secure_params)
        if @user.save
             remember @user       
      flash[:success] = "Welcome to MusicMarket!"    
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