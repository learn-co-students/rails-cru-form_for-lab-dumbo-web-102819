class SongsController < ApplicationController
    
    def show
        @song = Song.find(params[:id])
        @artist = Artist.find(@song.artist_id)
        @genre = Genre.find(@song.genre_id)
    end

    def new
        @s = 'new'
        @song = Song.new
    end

    def edit
        @s = 'edit'
        @song = Song.find(params[:id])
        render :new
    end

    def create
        a = Song.create(p_param)
        redirect_to song_path(a)
    end

    def update
        a = Song.find(params[:id])
        a.update(p_param)
        redirect_to song_path(a)
    end

    def index
        @songs = Song.all
    end

    private

    def p_param
        params.require(:song).permit(:name, :artist_id, :genre_id)
    end

end
