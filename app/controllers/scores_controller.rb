class ScoresController < ApplicationController
    def index 
        @scores = Score.all 

        render json: @scores
    end 

    def show 
        @score = Score.find(params[:id])

        render json: @score
    end 

    def create 
        @score = Score.create(total_score: params[:total_score], user_id: params[:user_id], question_id: params[:question_id])

        render json: @score
    end 

    def update 
        @score = Score.find(params[:id])
        @score.update(total_score: params[:total_score], user_id: params[:user_id], question_id: params[:question_id])
        render json: @score
    end 

    def destroy 
        @score = Score.find(params[:id])
        @score.destroy
        render json: {stauts: 204}
    end 
end
