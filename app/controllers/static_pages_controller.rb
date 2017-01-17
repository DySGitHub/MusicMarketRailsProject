class StaticPagesController < ApplicationController

<<<<<<< HEAD
  def home
            

  end
=======
     def home
         if logged_in?
            @micropost  = current_user.microposts.build
            @feed_items = current_user.feed
         end
      end
>>>>>>> 513d3798b282aa688b69d699e9b0a49ca679abf0

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