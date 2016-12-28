class GuitarsController < ApplicationController

      def show
    @guitar = Guitar.find(1)
      end
    
    def show2
@guitar = Guitar.find(2)
end
    
    def show3
@guitar = Guitar.find(3)
end
    
    def show4
@guitar = Guitar.find(4)
end
    
    def show5
@guitar = Guitar.find(5)
end
    
    def show6
@guitar = Guitar.find(6)
end

      def new
      end
    end