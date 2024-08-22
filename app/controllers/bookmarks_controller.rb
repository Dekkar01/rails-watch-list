class BookmarksController < ApplicationController
  def show
    @movies = Movie.all
    @lists = List.all
    @bookmarks = Bookmark.all
  end
end
