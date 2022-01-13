class InfantriesController < ApplicationController
  before_action :set_infantry,  only: [:show, :create, :update, :destroy]

  # GET /infantries
  def index
    @infantries = Infantry.all

    render json: @infantries
  end

  # GET /infantries/1
  def show
    @infantry = Infantry.find(params[:id])
    # render json: infantry
  end

  # POST /infantries
  def create
    # infantry = Infantry.new(infantry_params)
    @infantry = Infantry.new(infantry_params)

    if @infantry.save
      render json: @infantry, status: :created
      # , location: @infantry
    else
      render json: @infantry.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /infantries/1
  def update
    if @infantry.update(infantry_params)
      render json: @infantry
    else
      render json: @infantry.errors, status: :unprocessable_entity
    end
  end

  # DELETE /infantries/1
  def destroy
    @infantry.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_infantry
      @infantry = Infantry.new(params[:id])
    end

    # def update_infantry
    #   @infantry = Infantry.update(params[:id])
    # end

    # Only allow a list of trusted parameters through.
    def infantry_params
      params.require(:infantry).permit(:inf_attack, :inf_defense, :inf_health, :inf_attack_vs_player, :inf_defense_vs_player, :inf_health_vs_player, :inf_attack_vs_players_inf, :inf_attack_vs_players_range, :inf_attack_vs_players_cav, :inf_defense_vs_players_cav, :inf_defense_vs_players_inf, :inf_defense_vs_players_range, :inf_defense_vs_players_siege)
    end
end
