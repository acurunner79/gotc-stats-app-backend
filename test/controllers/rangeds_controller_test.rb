require "test_helper"

class RangedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ranged = rangeds(:one)
  end

  test "should get index" do
    get rangeds_url, as: :json
    assert_response :success
  end

  test "should create ranged" do
    assert_difference('Ranged.count') do
      post rangeds_url, params: { ranged: { range_attack: @ranged.range_attack, range_attack_vs_player: @ranged.range_attack_vs_player, range_attack_vs_players_cav: @ranged.range_attack_vs_players_cav, range_attack_vs_players_inf: @ranged.range_attack_vs_players_inf, range_attack_vs_players_range: @ranged.range_attack_vs_players_range, range_attack_vs_players_siege: @ranged.range_attack_vs_players_siege, range_defense: @ranged.range_defense, range_defense_vs_player: @ranged.range_defense_vs_player, range_defense_vs_players_cav: @ranged.range_defense_vs_players_cav, range_defense_vs_players_inf: @ranged.range_defense_vs_players_inf, range_defense_vs_players_range: @ranged.range_defense_vs_players_range, range_defense_vs_players_siege: @ranged.range_defense_vs_players_siege, range_health: @ranged.range_health, range_health_vs_player: @ranged.range_health_vs_player } }, as: :json
    end

    assert_response 201
  end

  test "should show ranged" do
    get ranged_url(@ranged), as: :json
    assert_response :success
  end

  test "should update ranged" do
    patch ranged_url(@ranged), params: { ranged: { range_attack: @ranged.range_attack, range_attack_vs_player: @ranged.range_attack_vs_player, range_attack_vs_players_cav: @ranged.range_attack_vs_players_cav, range_attack_vs_players_inf: @ranged.range_attack_vs_players_inf, range_attack_vs_players_range: @ranged.range_attack_vs_players_range, range_attack_vs_players_siege: @ranged.range_attack_vs_players_siege, range_defense: @ranged.range_defense, range_defense_vs_player: @ranged.range_defense_vs_player, range_defense_vs_players_cav: @ranged.range_defense_vs_players_cav, range_defense_vs_players_inf: @ranged.range_defense_vs_players_inf, range_defense_vs_players_range: @ranged.range_defense_vs_players_range, range_defense_vs_players_siege: @ranged.range_defense_vs_players_siege, range_health: @ranged.range_health, range_health_vs_player: @ranged.range_health_vs_player } }, as: :json
    assert_response 200
  end

  test "should destroy ranged" do
    assert_difference('Ranged.count', -1) do
      delete ranged_url(@ranged), as: :json
    end

    assert_response 204
  end
end
