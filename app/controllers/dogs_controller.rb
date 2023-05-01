class DogsController < ApplicationController
    def index
        dogs = Dog.all
        render json: dogs
    end

    def create
        dog = Dog.create
        render json: dog
    end

    def update
    end

    def destroy
    end

    def dog_params
        params.require(:dog).permit(:name, :age, :enjoys, :image)
    end
end

