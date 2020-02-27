class SongsController < ApplicationController
  before_action :set_song, only: [:show, :destroy]

  def index
    @songs = Song.all
  end

  def show

  end

  def new
    @song = Song.new
  end

  def edit

  end

  def create
    @songs = Songs.new(song_params)

    if @song.save
      redirect_to @song
    else
      render :new
    end
  end

  def destroy
    @song.destroy
    redirect_to artists_path
  end

  private
    def set_song
      @song = Song.find(params[:id])
    end

    def song_params
      params.require(:song).permit(:name, :song_id, :billboard_id)
    end
end
