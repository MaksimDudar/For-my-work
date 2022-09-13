class TracksController < ApplicationController
  before_action :authenticate_user!, :only => [:new, :create]

  def index
    @tracks = Track.all
    @tracks = Track.order(created_at: :desc)
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





  def track_params
    params.require(:track).permit(:pl, :pl2, :perecep2, :truck_by, :driver_by, :perecep, :truck_rus, :driver_rus, :semi_trailer, :country)
    end

  end
