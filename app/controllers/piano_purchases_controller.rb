class PianoPurchasesController < ApplicationController
          before_action :logged_in_user, only: [:create]

def create
     secure_post = params.require(:piano_purchase).permit(:pianoid, :delivery, :address, :country)
        @piano_purchase = current_user.piano_purchases.build(secure_post) 
        if @piano_purchase.save
          flash[:success] = "Purchase placed"
          redirect_to current_user
        else
            redirect_to :back
          flash[:error] = "Purchase failed"


        end
      end
    
    def correct_user
              @piano_purchase = current_user.piano_purchases.find_by(id: params[:id])
              redirect_to root_url if @piano_purchase.nil?
            end
    
   
end