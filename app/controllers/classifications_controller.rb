class ClassificationsController < ApplicationController
  def index
    @classifications = Classification.all
  end

  def show
    @classification = Classification.find(params[:id])
  end

  def new
    @classification = Classification.new
  end

  def create
    @classification = Classification.new
    @classification.genre_id = params[:genre_id]
    @classification.book_id = params[:book_id]

    if @classification.save
      redirect_to "/classifications", :notice => "Classification created successfully."
    else
      render 'new'
    end
  end

  def edit
    @classification = Classification.find(params[:id])
  end

  def update
    @classification = Classification.find(params[:id])

    @classification.genre_id = params[:genre_id]
    @classification.book_id = params[:book_id]

    if @classification.save
      redirect_to "/classifications", :notice => "Classification updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @classification = Classification.find(params[:id])

    @classification.destroy

    redirect_to "/classifications", :notice => "Classification deleted."
  end
end
