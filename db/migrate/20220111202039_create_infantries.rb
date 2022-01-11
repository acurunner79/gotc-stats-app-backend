class CreateInfantries < ActiveRecord::Migration[6.1]
  def change
    create_table :infantries do |t|
      t.decimal :inf_attack
      t.decimal :inf_defense
      t.decimal :inf_health
      t.decimal :inf_attack_vs_player
      t.decimal :inf_defense_vs_player
      t.decimal :inf_health_vs_player
      t.decimal :inf_attack_vs_players_inf
      t.decimal :inf_attack_vs_players_range
      t.decimal :inf_attack_vs_players_cav
      t.decimal :inf_defense_vs_players_cav
      t.decimal :inf_defense_vs_players_inf
      t.decimal :inf_defense_vs_players_range
      t.decimal :inf_defense_vs_players_siege

      t.timestamps
    end
  end
end
