class MatchMoviesController < ApplicationController
  def index
    @movies = Movie.all
    @tournaments = Movie.all.distinct.pluck(:tournament_id)

    @all_tournaments = Tournament.all.pluck(:tournament)
    @all_players = Player.all.pluck(:name)
  end

  def search
    if params[:key]
      # 検索
      @player_id_list = []
      player_id_by_name_list = Player.where("name LIKE ?", "%" + params[:key] + "%").pluck(:id)
      player_id_by_affiliation_list = Affiliation.where("affiliation LIKE ?", "%" + params[:key] + "%").pluck(:player_id)
      @player_id_list.concat(player_id_by_name_list, player_id_by_affiliation_list)

      tournament_id_list = Tournament.where("tournament LIKE ?", "%" + params[:key] + "%").pluck(:id)

      @movies = Movie.where(player_a_id: @player_id_list).or(Movie.where(player_b_id: @player_id_list)).or(Movie.where(player_c_id: @player_id_list)).or(Movie.where(player_d_id: @player_id_list)).or(Movie.where(tournament_id: tournament_id_list)).distinct
      @tournaments = Movie.where(player_a_id: @player_id_list).or(Movie.where(player_b_id: @player_id_list)).or(Movie.where(player_c_id: @player_id_list)).or(Movie.where(player_d_id: @player_id_list)).or(Movie.where(tournament_id: tournament_id_list)).distinct.pluck(:tournament_id)

      @all_tournaments = Tournament.all.pluck(:tournament)
      @all_players = Player.all.pluck(:name)
    end
  end
end
