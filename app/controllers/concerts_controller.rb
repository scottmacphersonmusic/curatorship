class ConcertsController < ApplicationController
  before_action :set_concert, only: [:show, :edit, :update, :destroy]
  before_action :set_artists, only: [:new, :edit]
  before_action :set_venues, only: [:new, :edit]

  def index
    @concerts = Concert.all
  end

  def show
    @artist = @concert.artist
    @venue = @concert.venue
  end

  def new
    @concert = Concert.new
    @start = Time.now
    @button_text = 'Create Concert'
  end

  def create
    @concert = Concert.new(concert_params)
    if @concert.save
      flash[:notice] = "Concert was successfully created."
      redirect_to @concert
    else
      render :new
    end
  end

  def edit
    @start = @concert.concert_date
    @button_text = 'Update Concert'
  end

  def update
    if @concert.update(concert_params)
      flash.now[:notice] = "Concert was successfully udpated."
      redirect_to @concert
    else
      render :edit
    end
  end

  def destroy
    @concert.destroy
    redirect_to concerts_url, notice: "Concert was successfully destroyed :("
  end

  private

  def concert_params
    params.require(:concert).permit(:artist_id, :venue_id, :concert_date)
  end

  def set_concert
    @concert = Concert.find(params[:id])
  end

  def set_artists
    @artists = Artist.all
  end

  def set_venues
    @venues = Venue.all
  end
end
