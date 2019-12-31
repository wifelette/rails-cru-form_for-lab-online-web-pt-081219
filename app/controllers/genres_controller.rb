class GenresController < ApplicationController
  before_action :set_genre, only: %i[show edit destroy new update]
  
  def index
    @genres = Genre.all
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(genre_params)
    @genre.save
    redirect_to genre_path(@genre)
  end

  def destroy
  end

  def show
  end

  def edit
  end

  def update
    @genre.update(genre_params)
    redirect_to genre_path(@genre)
  end

  private

  def set_genre
    @genre = if params[:id]
               Genre.find(params[:id])
             else
               Genre.new(name: "")
             end
  end

  def genre_params
    params.require(:genre).permit(:name)
  end
end
