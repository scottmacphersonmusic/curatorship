class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :edit, :update, :destroy]

  def index
    @artists = Artist.all
  end

  def show
  end

  def new
    @artist = Artist.new
  end

  def edit
  end

  def create
    @artist = Artist.new(artist_params)
    if @artist.save
      flash[:notice] = 'Artist was successfully created.'
      redirect_to @artist
    else
      render :new
    end
  end

  def update
    if @artist.update(artist_params)
      flash[:notice] = 'Artist was successfully updated.'
      redirect_to @artist
    else
      render :edit
    end
  end

  def destroy
    @artist.destroy
  redirect_to artists_url, notice: 'Artist was successfully destroyed.'
  end

  private

  def set_artist
    @artist = Artist.find(params[:id])
  end

  def artist_params
    params.require(:artist).permit(:name, :genre, :draw)
  end
end
