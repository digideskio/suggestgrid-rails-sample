class MoviesController < ApplicationController

  def index
    @movies = Movie.all.limit(4)
  end

  def show
    @movie = Movie.find(params[:id])
    @movie.create_action(current_or_guest_user)
  end

end
