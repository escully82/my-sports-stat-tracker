class PlayersController < ApplicationController

  def index
    @player = Player.all
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(player_params)

    if @player.save
      redirect_to :players, notice: "Welcome to the team!"
    else
      flash.now[:alert] = "Sorry, missed the cut"
      render :new
    end

  end

  def show
    @player = Player.find(params[:id])
  end

  def edit
    @player = Player.find(params[:id])
  end

  def update
    @player = Player.find(params[:id])
    if @player.update_attributes(player_params)
      redirect_to players_path, notice: "Update successful!"
    else
      flash.now[:alert] = "Sorry, unsuccessful. Try again."
      render :edit
    end
  end

  def destroy
    @player = Player.find(params[:id])
    @player.destroy
    redirect_to players_path, notice: "Retired from team"
  end

  private
    def player_params
      params.require(:player).permit(:name, :position, :number)
    end

end
