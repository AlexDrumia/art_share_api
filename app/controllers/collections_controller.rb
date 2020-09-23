class CollectionsController < ApplicationController
  def index
    user = User.find(params[:user_id])
    render json: user.collections
  end

  def show
    collection = Collection.find(params[:id])
    render json: collection
  end

  def create
    collection = Collection.new(collection_params)
    if collection.save
      render json: collection
    else
      render collection.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    collection = Collection.find(params[:id])
    collection.destroy
    render json: collection
  end

  def add_artwork
    artwork = Artwork.find(params[:artwork_id])
    collection = Collection.find(params[:collection_id])
    collection.artworks << artwork
    render json: artwork
  end

  def remove_artwork
    artwork = Artwork.find(params[:artwork_id])
    collection = Collection.find(params[:collection_id])
    collection.artworks.destroy(artwork)
    render json: artwork
  end

  private

  def collection_params
    params.require(:collection).permit(:name, :user_id)
  end
end
