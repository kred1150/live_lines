class ScoresController < ApplicationController
  def index
    score_response = HTTP.get("https://api.the-odds-api.com/v4/sports/basketball_nba/scores/?daysFrom=1&apiKey=#{Rails.application.credentials.odds_api_key}")
    score = JSON.parse(score_response.body)
    render json: score
  end
end
