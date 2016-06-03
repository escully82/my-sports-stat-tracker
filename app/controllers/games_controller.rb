class GamesController < ApplicationController

    def index
      @game = Game.all
    end

    def new
      @game = Game.new
    end

    def create
      @game = Game.new(game_params)

      if @game.save
        redirect_to :games, notice: "Game created!"
      else
        flash.now[:alert] = "Sorry, unsuccessful. Please try again."
        render :new
      end

    end

    def show
      @game = Game.find(params[:id])
    end

    def edit
      @game = Game.find(params[:id])
    end

    def update
      @game = Game.find(params[:id])
      if @game.update_attributes(game_params)
        redirect_to games_path, notice: "Update successful!"
      else
        flash.now[:alert] = "Sorry, unsuccessful. Please try again."
        render :edit
      end
    end

    def destroy
      @game = Game.find(params[:id])
      @game.destroy
      redirect_to games_path, notice: "Retired from team"
    end

    private
      def game_params
        params.require(:game).permit(:game_time, :game_location, :home_team,
                                     :away_team)
      end

  end

end
