class CreateCavalries < ActiveRecord::Migration[6.1]
  def change
    create_table :cavalries do |t|
      t.decimal :cav_attack
      t.decimal :cav_defense
      t.decimal :cav_health
      t.decimal :cav_attack_vs_player
      t.decimal :cav_defense_vs_player
      t.decimal :cav_health_vs_player
      t.decimal :cav_attack_vs_players_inf
      t.decimal :cav_attack_vs_players_ranged
      t.decimal :cav_attack_vs_players_cav
      t.decimal :cav_attack_vs_players_siege
      t.decimal :cav_defense_vs_players_cav
      t.decimal :cav_defense_vs_players_inf
      t.decimal :cav_defense_vs_players_ranged
      t.decimal :cav_defense_vs_players_siege

      t.timestamps
    end
  end
end
