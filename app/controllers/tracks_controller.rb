class TracksController < ApplicationController
  before_action :authenticate_user!, :only => [:new, :create]

  def index
    if params[:search]
      @tracks = Track.search(params[:search]).order("created_at DESC")
    else
      @tracks = Track.all.order('created_at DESC')
    end
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

  def edit
    @track = Track.find(params[:id])
  end

  def update
    @track = Track.find(params[:id])
    if @track.update(track_params)
      redirect_to @track
    else
      render action: 'edit'
    end
  end

  def destroy
    @track = Track.find(params[:id])
    @track.destroy

    redirect_to tracks_path
  end

private
  def track_params
    params.require(:track).permit(:pl, :pl2, :perecep2, :truck_by, :driver_by, :perecep, :truck_rus, :driver_rus, :semi_trailer, :country)
    end

  end
