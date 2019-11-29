class ArtistsController < ApplicationController

    has_many :songs

end

def show
    @artist = Artist.find(params[:id])
end

def new
    @artist = Artist.new
end

def edit
    @artist = Artist.find(params[:id])
end

def create 
    @artist = artist.new(artist_params(:name, :bio))
    @artist.save
    redirect_to_artist_path(@artist)
end

def update
    @artist = Artist.find(params[:id])
    @artist.update(artist_params(:name, :bio))
    redirect_to_artist_path(@artist)
end

private

def artist_params(*args)
    params.require(:artist).permit(*args)
end

end

