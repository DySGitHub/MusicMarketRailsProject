class GuitarsController < ApplicationController

      def show
        @guitar = Guitar.find(params[:id])
      end


      def new
      end
    end