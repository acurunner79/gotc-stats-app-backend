class RangedsController < ApplicationController
  # before_action :set_ranged, only: [:show, :update, :destroy]

  # GET /rangeds
  def index
    render json: { status: 200, rangeds: Ranged.all }
  end

  # GET /rangeds/1
  def show
    render json: Ranged.find(params[:id])
  end

  # POST /rangeds
  def create
    ranged = Ranged.new(ranged_params)

    if ranged.save
      render status: 201 json: { ranged: ranged }
    else
      render status: 422, json: { ranged: ranged }
    end
  end

  # PATCH/PUT /rangeds/1
  def update
    ranged = Ranged.find(params[:id])
    ranged.update(ranged_params)
    render(json: { ranged: ranged })
  end

  # DELETE /rangeds/1
  def destroy
    ranged = Ranged.destroy(params[:id])
    render(status: 204)
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    # Only allow a list of trusted parameters through.
    def ranged_params
      params.require(:ranged).permit(:range_attack, :range_defense, :range_health, :range_attack_vs_player, :range_defense_vs_player, :range_health_vs_player, :range_attack_vs_players_inf, :range_attack_vs_players_range, :range_attack_vs_players_cav, :range_attack_vs_players_siege, :range_defense_vs_players_cav, :range_defense_vs_players_inf, :range_defense_vs_players_range, :range_defense_vs_players_siege)
    end
end
