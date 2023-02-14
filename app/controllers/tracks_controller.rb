class TracksController < ApplicationController
  before_action :set_track, only: [:edit, :update, :show, :destroy]

    def index
      @tracks = Track.all
    end
  
    def show
    end

    def new
      @track = Track.new
    end
  
    def create
      @track = Track.new(track_params)
      @track.guest = current_guest
            
      if @track.save
        redirect_to tracks_path, notice: "Track uploaded successfully."
      else
        render :new
      end
    end

    def update
      @track = Track.find(params[:id])
      if @track.update(track_params)
        redirect_to tracks_path, notice: 'Track was successfully updated.'
      else
        render :edit
      end
    end

    def destroy
      @track = Track.find(params[:id])
      @track.destroy
      redirect_to tracks_path, notice: 'Track was successfully deleted.'
    end
    
    def edit
    end
  
    private

    def set_track
      @track = Track.find(params[:id])
    end
  
    def track_params
      params.require(:track).permit(:title, :body)
    end
  end
  