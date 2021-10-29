class OwnersController < ApplicationController
    skip_before_action :verify_authenticity_token
    before_action :set_owner, only: [:show, :update, :destroy]

    # Read/GET
    def index
        render json: Owner.all
    end 

    # Read/GET
    def show 
        if @owner 
            render json: @owner
        else 
            render json: {error: 'Owner not found'}, status: :not_found 
        end 
    end 

    # Create/POST
    def create 
        owner = Owner.create!(owner_params)
        owner.dogs.create!(dog_params)
        if owner.valid?
            render json: owner
        else 
            byebug
            render json: { errors: owner.errors.full_messages}
        end 
    end

    # Update/PATCH
    def update 
        if @owner.update(owner_params)
            render json: @owner 
        else 
            render json: {error: 'Owner could not be updated'}
        end 
    end 

    def destroy 
        @owner.destroy
    end 

    private 

    def owner_params 
        params.require(:owner).permit(:name, :age)
    end 


    def dog_params
        params.require(:dog).permit(:name)
    end 

    def set_owner 
        @owner = Owner.find_by_id(params[:id])
    end 


end
