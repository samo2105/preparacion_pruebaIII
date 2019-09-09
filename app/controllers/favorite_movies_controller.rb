class FavoriteMoviesController < ApplicationController
  before_action :movie_find, only: [:update]
  def update
    if @movie.favorite?
    @movie.favorite = false
    @movie.save
    redirect_to movies_path, notice: 'Película agregada de favoritos'
    else
    @movie.favorite = true
    @movie.save
    redirect_to movies_path, notice: 'Película eliminada de favoritos'
    end
  end

  private
  def movie_find
    @movie = Movie.find(params[:id])
  end
end
