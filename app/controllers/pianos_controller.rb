class PianosController < ApplicationController

      def show
    @piano = Piano.find(1)
      end
    
    def show2
@piano = Piano.find(2)
end
    
    def show3
@piano = Piano.find(3)
end
    
    def show4
@piano = Piano.find(4)
end
    
    def show5
@piano = Piano.find(5)
end
    
    def show6
@piano = Piano.find(6)
end

      def new
      end
    end