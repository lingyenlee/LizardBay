class ListingsController < ApplicationController

    def index
        @listings = Listing.all.sorted_id
    end

    def show
        @listing = Listing.find(params[:id])
    end

    def new
      @listing = Listing.new
      @breeds = Breed.all.sorted_name
      @sexes = Listing.sexes.keys
    end
end