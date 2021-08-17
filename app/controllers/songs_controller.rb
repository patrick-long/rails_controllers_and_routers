class SongsController < ApplicationController 
    def index
        songs = Song.all
        render json: {status: 200, songs: songs}
    end

    def show
        song = Song.find(params[:id])
        render json: {status: 200, song: song}
    end

    def create 

    end


    private

    def song_params
        params.required(:song).permit(:title, :artist_name, :artwork)
    end
end 