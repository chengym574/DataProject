class PokemonsController < ApplicationController
    def index
      @pokemons = Pokemon.all
    end

    def show
        @pokemon = Pokemon.includes(:trainers).find(params[:id])
    end
end