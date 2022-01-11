class CreateRangeds < ActiveRecord::Migration[6.1]
  def change
    create_table :rangeds do |t|
      t.decimal :range_attack
      t.decimal :range_defense
      t.decimal :range_health
      t.decimal :range_attack_vs_player
      t.decimal :range_defense_vs_player
      t.decimal :range_health_vs_player
      t.decimal :range_attack_vs_players_inf
      t.decimal :range_attack_vs_players_range
      t.decimal :range_attack_vs_players_cav
      t.decimal :range_attack_vs_players_siege
      t.decimal :range_defense_vs_players_cav
      t.decimal :range_defense_vs_players_inf
      t.decimal :range_defense_vs_players_range
      t.decimal :range_defense_vs_players_siege

      t.timestamps
    end
  end
end
