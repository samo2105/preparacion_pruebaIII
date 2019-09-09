class MoviesController < ApplicationController
  before_action :movie_find, only: [:show, :edit, :update, :delete, :favorite]

  def index
    @regular_movies = Movie.where(favorite: false)
    @favorite_movies = Movie.where(favorite: true)
  end


  def new; end

  def create
    @new_movie = Movie.new(movies_params)
    @new_movie.save
    redirect_to movies_path
  end

  def show; end

  def edit; end

  def update
    @movie.update(movies_params)
    redirect_to movies_path
  end

  def delete
    @movie.destroy
    redirect_to movies_path
  end

  private
  def movies_params
    params.require(:movie).permit(:name, :year)
  end

  def movie_find
    @movie = Movie.find(params[:id])
  end
end
