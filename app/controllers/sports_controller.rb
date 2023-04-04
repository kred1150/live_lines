class SportsController < ApplicationController
  def index
    response = HTTP.get("https://api.the-odds-api.com/v4/sports?apiKey=#{Rails.application.credentials.odds_api_key}")
    sports = JSON.parse(response.body)
    sport_names = []
    sports.map do |sport|
      sport_names << sport["title"]
    end
    render json: sport_names
  end
end
