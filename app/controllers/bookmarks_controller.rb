class BookmarksController < ApplicationController
  def new
    @list = List.find(params[:list_id])

    # @movie = Movie.find(params[:list_id])
    # instanciate form
    @bookmark = Bookmark.new
  end

  def create
    # find list to associate later
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.list = @list

    if @bookmark.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to list_path(@bookmark.list)
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id, :list_id, :photo)
  end
end
