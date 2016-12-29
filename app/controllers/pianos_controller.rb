class PianosController < ApplicationController

      def show
  @piano = Piano.find(params[:id])
      end
    

      def new
      end
    end