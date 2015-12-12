Rails.application.routes.draw do
  devise_for :users
  root to: "books#index"

  get "/my_favorites", :controller => "books", :action => "my_favorites"
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"

  # Routes for the Classification resource:
  # CREATE
  get "/classifications/new", :controller => "classifications", :action => "new"
  post "/create_classification", :controller => "classifications", :action => "create"

  # READ
  get "/classifications", :controller => "classifications", :action => "index"
  get "/classifications/:id", :controller => "classifications", :action => "show"

  # UPDATE
  get "/classifications/:id/edit", :controller => "classifications", :action => "edit"
  post "/update_classification/:id", :controller => "classifications", :action => "update"

  # DELETE
  get "/delete_classification/:id", :controller => "classifications", :action => "destroy"
  #------------------------------

  # Routes for the Genre resource:
  # CREATE
  get "/genres/new", :controller => "genres", :action => "new"
  post "/create_genre", :controller => "genres", :action => "create"
  get "/create_genre", :controller => "genres", :action => "index"
  # READ
  get "/genres", :controller => "genres", :action => "index"
  get "/genres/:id", :controller => "genres", :action => "show"

  # UPDATE
  get "/genres/:id/edit", :controller => "genres", :action => "edit"
  post "/update_genre/:id", :controller => "genres", :action => "update"

  # DELETE
  get "/delete_genre/:id", :controller => "genres", :action => "destroy"
  #------------------------------

  # Routes for the Author resource:
  # CREATE
  get "/authors/new", :controller => "authors", :action => "new"
  post "/create_author", :controller => "authors", :action => "create"
  get "/create_author", :controller => "authors", :action => "index"
  # READ
  get "/authors", :controller => "authors", :action => "index"
  get "/authors/:id", :controller => "authors", :action => "show"

  # UPDATE
  get "/authors/:id/edit", :controller => "authors", :action => "edit"
  post "/update_author/:id", :controller => "authors", :action => "update"

  # DELETE
  get "/delete_author/:id", :controller => "authors", :action => "destroy"
  #------------------------------

  # Routes for the Book resource:
  # CREATE
  get "/books/new", :controller => "books", :action => "new"
  post "/create_book", :controller => "books", :action => "create"
  get "/create_book", :controller => "books", :action => "index"

  # READ
  get "/books", :controller => "books", :action => "index"
  get "/books/:id", :controller => "books", :action => "show"

  # UPDATE
  get "/books/:id/edit", :controller => "books", :action => "edit"
  post "/update_book/:id", :controller => "books", :action => "update"

  # DELETE
  get "/delete_book/:id", :controller => "books", :action => "destroy"
  #------------------------------

  # Routes for the Comment resource:
  # CREATE
  get "/comments/new", :controller => "comments", :action => "new"
  post "/create_comment", :controller => "comments", :action => "create"

  # READ
  get "/comments", :controller => "comments", :action => "index"
  get "/comments/:id", :controller => "comments", :action => "show"

  # UPDATE
  get "/comments/:id/edit", :controller => "comments", :action => "edit"
  post "/update_comment/:id", :controller => "comments", :action => "update"

  # DELETE
  get "/delete_comment/:id", :controller => "comments", :action => "destroy"
  #------------------------------

  # Routes for the Favorite resource:
  # CREATE
  get "/favorites/new", :controller => "favorites", :action => "new"
  post "/create_favorite", :controller => "favorites", :action => "create"

  # READ
  get "/favorites", :controller => "favorites", :action => "index"
  get "/favorites/:id", :controller => "favorites", :action => "show"

  # UPDATE
  get "/favorites/:id/edit", :controller => "favorites", :action => "edit"
  post "/update_favorite/:id", :controller => "favorites", :action => "update"

  # DELETE
  get "/delete_favorite/:id", :controller => "favorites", :action => "destroy"
  #------------------------------





end
