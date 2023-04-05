class SportsController < ApplicationController
  def index
    response = HTTP.get("https://api.the-odds-api.com/v4/sports?apiKey=#{Rails.application.credentials.odds_api_key}")
    sports = JSON.parse(response.body)
    @sport_keys = []
    sports.map do |sport|
      @sport_keys << sport["key"]
    end
    render json: sports
  end
end
