class SongsController < ApplicationController 
    def index
        songs = Song.all
        render json: {status: 200, songs: songs}
    end
end 