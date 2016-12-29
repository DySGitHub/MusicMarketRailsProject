class AccessoriesController < ApplicationController

      def show
    @accessory = Accessory.find(1)
      end
    
    def show2
@accessory = Accessory.find(2)
end
    
    def show3
@accessory = Accessory.find(3)
end
    
    def show4
@accessory = Accessory.find(4)
end
    
    def show5
@accessory = Accessory.find(5)
end
    
    def show6
@accessory = Accessory.find(6)
end

      def new
      end
    end