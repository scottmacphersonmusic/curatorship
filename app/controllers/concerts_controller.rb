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
  end

  def edit
  end
end
