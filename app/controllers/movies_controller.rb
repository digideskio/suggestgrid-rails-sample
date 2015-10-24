class MoviesController < ApplicationController

  def index
    @recommended_movies = Movie.recommend(current_or_guest_user, 4)
    @all_movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
    @movie.create_action(current_or_guest_user)
  end

end
