class TracksController < ApplicationController

  def index
    @tracks = Track.all
  end

  def show
    @tracks = Track.find(params[:id])

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
    end

  end
