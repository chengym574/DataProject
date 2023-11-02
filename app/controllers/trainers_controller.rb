class TrainersController < ApplicationController
    def index
      @trainers = Trainer.all
    end

    def show
        @trainer = Trainer.includes(:region, :pokemons).find(params[:id])
    end
end