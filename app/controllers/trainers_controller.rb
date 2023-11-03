class TrainersController < ApplicationController
    def index
      if params[:search].present?
        @trainers = Trainer.where("name LIKE ?", "%#{params[:search]}%").page(params[:page]).per(54)
      else
        @trainers = Trainer.page(params[:page]).per(54)
      end
    end

    def show
        @trainer = Trainer.includes(:region, :pokemons).find(params[:id])
    end
end