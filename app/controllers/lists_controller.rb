class ListsController < ApplicationController
  def index
    @movies = Movie.all
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
    @movies = @list.movies
  end

  def new
    @lists = List.new
  end

  def create
    @lists = List.new(list_params)
    @lists.save
    redirect_to root_path
  end
  def destroy
    @list = List.find(params[:id])
    @list.destroy
    redirect_to root_path, status: :see_other
  end
  private

  def list_params
    params.require(:list).permit(:name)
  end
end
