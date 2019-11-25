class GenresController < ApplicationController
    
    def show
        @genre = Genre.find(params[:id])
    end

    def new
        @s = 'new'
        @genre = Genre.new
    end

    def edit
        @s = 'edit'
        @genre = Genre.find(params[:id])
        render :new
    end

    def create
        a = Genre.create(p_param)
        redirect_to genre_path(a)
    end

    def update
        a = Genre.find(params[:id])
        a.update(p_param)
        redirect_to genre_path(a)
    end

    private

    def p_param
        params.require(:genre).permit(:name)
    end
end
