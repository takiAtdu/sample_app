class MatchMoviesController < ApplicationController
  def index
    @match_movies = Movie.all
    @players = Player.all.pluck(:name)
  end

  def show
    @match = Movie.find(params[:id])
  end

  def search
  end
end
