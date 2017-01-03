class AccPurchasesController < ApplicationController
          before_action :logged_in_user, only: [:create]

def create
     secure_post = params.require(:acc_purchase).permit(:accid, :delivery, :address, :country)
        @acc_purchase = current_user.acc_purchases.build(secure_post) 
        if @acc_purchase.save
          flash[:success] = "Purchase placed"
          redirect_to current_user
        else
            redirect_to :back
          flash[:error] = "Purchase failed"


        end
      end
    
    def correct_user
              @acc_purchase = current_user.acc_purchases.find_by(id: params[:id])
              redirect_to root_url if @acc_purchase.nil?
            end
    
   
end