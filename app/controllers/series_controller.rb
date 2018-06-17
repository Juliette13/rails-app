class SeriesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  
  def index
    @series = Serie.all
    @episodes = Episode.all
  end
  
  def show
    @episode = Episode.find(params[:id])
  end
  
  def new
    @serie = Serie.new
  end
  
  def create
    serie_params = params.require(:serie).permit(:titre, :image)
    @serie = Serie.new(serie_params)
    #@episode.user = current_user
    
    if @serie.valid?
      @serie.save!
    else
      render :new
    end
  end
  
end
