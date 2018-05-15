class EpisodesController < ApplicationController
  before_action :authenticate_user!, only: [:create, :new]
  
  def index
    @episodes = Episode.all
  end
  
  def show
    @episode = Episode.find(params[:id])
  end
  
  def new
    @episode = Episode.new
  end
  
  def create
    episode_params = params.require(:episode).permit(:identifiant, :seasonNumber, :episodeNumber, :title)
    @episode = Episode.new(episode_params)
    #@episode.user = current_user
    
    if @episode.valid?
      @episode.save!
    else
      render :new
    end
  end
  
end
