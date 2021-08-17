class SongsController < ApplicationController 
    def index
        songs = Song.all
        render json: {status: 200, songs: songs}
    end

    def show
        render json: Song.find(params[:id])
    end
end 