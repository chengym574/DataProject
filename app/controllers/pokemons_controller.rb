class PokemonsController < ApplicationController
    def index
      @pokemons = Pokemon.page(params[:page]).per(50)
    end

    def show
        @pokemon = Pokemon.includes(:trainers).find(params[:id])
    end
end