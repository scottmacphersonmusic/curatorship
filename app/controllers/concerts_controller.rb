class ConcertsController < ApplicationController
  def index
    @concerts = Concert.all
  end

  def show
    @concert = Concert.find(params[:id])
    @artist = @concert.artist
    @venue = @concert.venue
  end

  def new
    @concert = Concert.new
    @artists = Artist.all.uniq
    @venues = Venue.all.uniq
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
  end

  private

  def concert_params
    params.require(:concert).permit(:artist_id, :venue_id, :concert_date)
  end
end
