class ChallengersController < ApplicationController
    def index
        @challenger =Challenger.all
        render json: @challenger
    end
    
    def create 
        @challenger = Challenger.create(challenger_params)
        render json: @challenger
    end

    def show
        @challenger =Challenger.find(params[:id])
        render json: @challenger
    end
    
    def  update
        Challenger.update(params[:id],challenger_params)
    end
    
    def destroy
        Challenger.destroy(params[:id])
    end

    def challenger_params
        params.require(:challenger).permit(:name, :points, :team_id, :staff)
    end
end
