class DogsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
        dogs = Dog.where(owner_id: params[:owner_id])
        render json: dogs
    end 

     # Create/POST
    def create 
        owner = Owner.find(params[:owner_id])
        dog = owner.dogs.create!(dog_params)
        if dog.valid?
            render json: dog
        else 
            render json: { errors: owner.errors.full_messages}
        end 
    end

    def update 
        dog = Dog.find(params[:id])
        dog.update!(dog_params)
        render json: dog
    end 

    def destroy 
        dog = Dog.find(params[:id])
        dog.destroy
    end 

    private 

    def dog_params
        params.require(:dog).permit(:name)
    end 
end
