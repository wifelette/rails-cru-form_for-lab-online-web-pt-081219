class SongsController < ApplicationController
  before_action :set_song, only: %i[show edit destroy new update]

  def index
    @songs = Song.all
  end

  def create
    @song = Song.new(song_params(:name, :artist_id, :genre_id))
    @song.save
    redirect_to song_path(@song)
  end

  def new
  end

  def destroy
  end

  def show
  end

  def edit
  end

  def update
    @song.update(song_params(:name, :artist_id, :genre_id))
    redirect_to song_path(@song)
  end

  private

  def set_song
    @song = if params[:id]
              Song.find(params[:id])
            else
              Song.new(name: "")
            end
  end

  def song_params(*args)
    params.require(:song).permit(*args)
  end
end
