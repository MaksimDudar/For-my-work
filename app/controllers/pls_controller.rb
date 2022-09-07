class PlsController < ApplicationController
  def create
    @track.pls.create(pl_params)
  end
  private
  def pl_params
  params.require(:pl).permit(:name)
  end
end
