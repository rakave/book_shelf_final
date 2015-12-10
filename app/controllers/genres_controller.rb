class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new
    @genre.title = params[:title]

    if @genre.save
      redirect_to "/genres", :notice => "Genre created successfully."
    else
      render :back
    end
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])

    @genre.title = params[:title]

    if @genre.save
      redirect_to "/genres", :notice => "Genre updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @genre = Genre.find(params[:id])

    @genre.destroy

    redirect_to "/genres", :notice => "Genre deleted."
  end
end
