class ArtistsController < ApplicationController
    
    
    def show
        @artist = Artist.find(params[:id])
    end

    def new
        @s = 'new'
        @artist = Artist.new
    end

    def edit
        @s = 'edit'
        @artist = Artist.find(params[:id])
        render :new
    end

    def create
        a = Artist.create(p_param)
        redirect_to artist_path(a)
    end

    def update
        a = Artist.find(params[:id])
        a.update(p_param)
        redirect_to artist_path(a)
    end

    private

    def p_param
        params.require(:artist).permit(:name, :bio)
    end
end
