class TracksController < ApplicationController

  def index
    @tracks = Track.all
  end

  def show
    @track = Track.find(params[:id])

  end

  def new
  end

  def create
    @track = Track.new(track_params)
    if @track.save
      redirect_to @track
    else
      render action: 'new'
    end
  end

  def track_params
    params.require(:track).permit(:pl, :truck_by, :driver_by, :perecep, :truck_rus, :driver_rus, :semi_trailer, :country)
    end

  end
