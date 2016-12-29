class AccessoriesController < ApplicationController

      def show
  @accessory = Accessory.find(params[:id])
      end
    
  

      def new
      end
    end