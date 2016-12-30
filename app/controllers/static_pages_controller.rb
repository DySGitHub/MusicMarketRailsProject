class StaticPagesController < ApplicationController

  def home
            

  end

  def help
  end

  def about      
  end
    
    
    
    def contact
         if logged_in?
            @feedback  = current_user.feedbacks.build
             @feed_items = current_user.feed
    end
end
end