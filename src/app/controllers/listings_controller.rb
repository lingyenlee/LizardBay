class ListingsController < ApplicationController

    # use before action filter to run set_listing method before other controller methods
    before_action :set_listing, only: [:show, :edit, :update, :delete]

    def index
        # show all listings
        @listings = Listing.all.sorted_id
    end

    def show
        # show listing with id selected
        # set_listing
    end

    def new
        #show values for all breeds and sex keys
        set_breed_sex
        #create new listing
        @listing = Listing.new
    end

    def create
        # create new listing with values added in the form (listing_params) 
        @listing = Listing.create(listing_params)
        # check for errors 
        if @listing.errors.any? #if errors exist 
            set_breed_sex #show all values of breeds and sex keys
            render "new" #render the "new.html" view  
        else 
            # if no error redirect to the index page showing all listing
            flash[:notice] = "Listing created successfully!"
            redirect_to listings_path
        end
    end

    def edit
        #show all values of breeds and sex keys
        set_breed_sex
        # show listing with id selected
        # set_listing
    end

    def update
        # show listing with id selected
        # set_listing
        # save updated listing to @updated_listing
        @updated_listing = @listing.update(listing_params)

        # check for errors
        if @listing.errors.any?
            set_breed_sex
            # render edit page if have errors
            render "edit"
        else
            # redirect to show single listing page
            flash[:notice] = "Listing updated successfully!"
            redirect_to listing_path
        end
    end

    def delete
        # this direct to view delete page 
        # show listing with id selected
        # set_listing
    end

    def destroy
        # delete the listing from database
        Listing.find(params[:id]).destroy
        # redirect back to index page
        flash[:notice] = "Listing deleted successfully!"
        redirect_to listings_path
    end

    private
        # give permissions for the params values enter
        def listing_params
            params.require(:listing).permit(:title, :description, :age, :breed_id, :sex, 
                :diet, :deposit, :price, :city, :state, :picture)
        end

        # find selected id
        def set_listing
            @listing = Listing.find(params[:id])
        end

        #show all values for breeds and key values
        def set_breed_sex
            @breeds = Breed.all
            @sexes = Listing.sexes.keys
        end
end