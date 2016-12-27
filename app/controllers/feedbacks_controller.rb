class FeedbacksController < ApplicationController
before_action :logged_in_user, only: [:create, :destroy]
before_action :correct_user,   only: :destroy
      def create
           secure_post = params.require(:feedback).permit(:content)
        @feedback = current_user.feedbacks.build(secure_post) 
        if @feedback.save
          flash[:success] = "fb created!"
          redirect_to current_user
        else
            @feed_items = [] 
          render 'static_pages/home'
        end
      end

     def destroy
            @feedback.destroy
            flash[:success] = "fb deleted"
            redirect_to current_user
          end

            #NEW PRIVATE METHOD
          private

            def correct_user
              @feedback = current_user.feedbacks.find_by(id: params[:id])
              redirect_to root_url if @feedback.nil?
            end
        end