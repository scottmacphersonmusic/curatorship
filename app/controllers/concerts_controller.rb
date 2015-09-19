class ConcertsController < ApplicationController
  def index
    @concerts = Concert.all
  end

  def show
  end

  def new
  end

  def edit
  end
end
