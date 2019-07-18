class TeamsController < ApplicationController
    def index
        @teams = Team.all
        render json: @teams
    end
    
    def create 
        @team = Team.create(team_params)
        render json: @team
    end

    def show
        @team = Team.find(params[:id])
        
        @point_sum = 0
        @team.challengers.each do |challenger|
            @point_sum = @point_sum + challenger.points
        end
        
        if @team.challengers.count == 4
            @point_sum * 1.25
        elsif @team.challengers.count != 5
            @point_sum = NaN
        end
        render json: {
            team: @team.name,
            points: @point_sum,
            team_members: @team.challengers.count
        }
    end
    
    def  update
        Team.update(params[:id], team_params)
    end
    
    def destroy
        Team.destroy(params[:id])
    end

    def team_params
        params.require(:team).permit(:name, :points)
    end
end
