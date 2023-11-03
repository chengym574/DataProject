class PokemonsController < ApplicationController
    def index
      if params[:search].present?
        @pokemons = Pokemon.where("name LIKE ?", "%#{params[:search]}%").page(params[:page]).per(54)
      else
        @pokemons = Pokemon.page(params[:page]).per(54)
      end
    end

    def show
        @pokemon = Pokemon.includes(:trainers).find(params[:id])
    end
end