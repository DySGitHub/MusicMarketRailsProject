class StaticPagesController < ApplicationController

  def home
              #Feedback.new = current_user.feedback.build if logged_in?

  end

  def help
  end

  def about      # NEW
  end
    
    
    
    def contact
         if logged_in?
            @feedback  = current_user.feedbacks.build
            @feed_items = current_user.feed 
    end
    
end
end