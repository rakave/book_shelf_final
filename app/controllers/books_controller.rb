class BooksController < ApplicationController

  def my_favorites
    @books = current_user.favorite_books
  end

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new
    @book.author_id = params[:author_id]
    @book.user_id = params[:user_id]
    @book.blurb = params[:blurb]
    @book.title = params[:title]
    @book.image = params[:image]
    @book.save

    unless params[:genre_id].blank?

      @genreids = params[:genre_id].map { |x| x.to_i }

      @genreids.each do |gid|
        @classification = Classification.new
        @classification.book_id = @book.id
        @classification.genre_id = gid
        @classification.save
      end
    end

    if @book.save && @classification.save
      redirect_to :back, :notice => "Book created successfully."
    else
      render 'new'
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])

    @book.author_id = params[:author_id]
    @book.user_id = params[:user_id]
    @book.blurb = params[:blurb]
    @book.title = params[:title]
    @book.image = params[:image]

    if @book.save
      redirect_to :back, :notice => "Book updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @book = Book.find(params[:id])

    @book.destroy

    redirect_to :back, :notice => "Book deleted."
  end
end



