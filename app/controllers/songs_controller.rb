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
        song = Song.new(song_params)

        if song.save
            render(status: 201, json: { song: song })
        else
            render(status: 422, json: { song: song })
        end
    end

    def update
        song = Song.find(params[:id])
        song.update(song_params)
        render(json: {song: song})
    end

    def destroy 
        song = Song.destroy(params[:id])
        render(status: 204)
    end


    private

    def song_params
        params.required(:song).permit(:title, :artist_name, :artwork)
    end
end 