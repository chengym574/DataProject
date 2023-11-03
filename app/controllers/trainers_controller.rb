class TrainersController < ApplicationController
    def index
      @trainers = Trainer.page(params[:page]).per(50)
    end

    def show
        @trainer = Trainer.includes(:region, :pokemons).find(params[:id])
    end
end