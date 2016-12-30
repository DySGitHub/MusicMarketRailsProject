class PurchasesController < ApplicationController
          before_action :logged_in_user, only: [:create]

def create
     secure_post = params.require(:purchase).permit(:guitarid, :delivery, :address, :country)
        @purchase = current_user.purchases.build(secure_post) 
        if @purchase.save
          flash[:success] = "Purchase placed"
          redirect_to current_user
        else
            redirect_to :back
          flash[:error] = "Purchase failed"


        end
      end
    
    def correct_user
              @purchase = current_user.purchases.find_by(id: params[:id])
              redirect_to root_url if @purchase.nil?
            end
end