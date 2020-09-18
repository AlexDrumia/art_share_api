class ArtworksController < ApplicationController
  def index
    user = User.find(params[:user_id])
    user_artworks = user.artworks + user.shared_artworks
    render json: user_artworks
  end

  def show
    artwork = Artwork.find(params[:id])
    render json: artwork
  end

  def create
    artwork = Artwork.new(artwork_params)
    
    if artwork.save
      render json: artwork
    else
      render json: artwork.errors.full_messages, status: :unprocessable_entity
    end  
  end  

  def update
    artwork = Artwork.find(params[:id])
    
    if artwork.update(artwork_params)
      render json: artwork
    else
      render json: artwork.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    artwork = Artwork.find(params[:id])
    artwork.destroy
    render json: artwork
  end

  def likes
    user = User.find(params[:user_id])
    render json: user.liked_artworks
  end

  def likers
    artwork = Artwork.find(params[:id])
    render json: artwork.likers
  end
  
  private

  def artwork_params
    params.require(:artwork).permit(:title, :image_url, :artist_id)
  end
end
