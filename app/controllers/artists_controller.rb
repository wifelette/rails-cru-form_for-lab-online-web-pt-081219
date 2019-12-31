class ArtistsController < ApplicationController
  before_action :set_artist, only: %i[show update destroy new edit]

  def index
    @artists = Artist.all
  end

  def new
  end

  def create
    @artist = Artist.new(artist_params(:name, :bio))
    @artist.save
    redirect_to artist_path(@artist)
  end

  def destroy
  end

  def show
  end

  def edit
  end

  def update
    @artist.update(artist_params(:name, :bio))
    redirect_to artist_path(@artist)
  end

  private

  def set_artist
    @artist = if params[:id]
                Artist.find(params[:id])
              else
                Artist.new(name: "", bio: "")
              end
  end

  def artist_params(*args)
    params.require(:artist).permit(*args)
  end
end
