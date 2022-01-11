class RangedsController < ApplicationController
  before_action :set_ranged, only: [:show, :update, :destroy]

  # GET /rangeds
  def index
    @rangeds = Ranged.all

    render json: @rangeds
  end

  # GET /rangeds/1
  def show
    render json: @ranged
  end

  # POST /rangeds
  def create
    @ranged = Ranged.new(ranged_params)

    if @ranged.save
      render json: @ranged, status: :created, location: @ranged
    else
      render json: @ranged.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /rangeds/1
  def update
    if @ranged.update(ranged_params)
      render json: @ranged
    else
      render json: @ranged.errors, status: :unprocessable_entity
    end
  end

  # DELETE /rangeds/1
  def destroy
    @ranged.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ranged
      @ranged = Ranged.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ranged_params
      params.require(:ranged).permit(:range_attack, :range_defense, :range_health, :range_attack_vs_player, :range_defense_vs_player, :range_health_vs_player, :range_attack_vs_players_inf, :range_attack_vs_players_range, :range_attack_vs_players_cav, :range_attack_vs_players_siege, :range_defense_vs_players_cav, :range_defense_vs_players_inf, :range_defense_vs_players_range, :range_defense_vs_players_siege)
    end
end
