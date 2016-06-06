class MoviesController < ApplicationController

  def index
    @movies = {
        recommended: Movie.recommend(current_or_guest_user, 4),
        all: Movie.all
    }
  end

  def show

    movie = Movie.find(params[:id])

    # send view information to SuggestGrid
    movie.create_action(current_or_guest_user)

    @movie = {
        movie: movie,
        recommended_similar: movie.recommend_similar(current_or_guest_user, 12),
        similar: movie.similar(5)
    }
  end

end
