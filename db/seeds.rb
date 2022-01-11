# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Infantry.create([{   
    inf_attack: 275.969,
    inf_defense: 207.96,
    inf_health: 143.215,
    inf_attack_vs_player: 526.386,
    inf_defense_vs_player: 195.053,
    inf_health_vs_player: 200.43,
    inf_attack_vs_players_inf: 102.42,
    inf_attack_vs_players_range: 48.94,
    inf_attack_vs_players_cav: 279.003,
    inf_defense_vs_players_cav: 242.705,
    inf_defense_vs_players_inf: 8.36,
    inf_defense_vs_players_range: 120.736,
    inf_defense_vs_players_siege: 3.0
}])

Ranged.create([{
    range_attack: 249.637,
    range_defense: 211.486,
    range_health: 200.694,
    range_attack_vs_player: 555.162,
    range_defense_vs_player: 387.333,
    range_health_vs_player: 332.806,
    range_attack_vs_players_inf: 357.828,
    range_attack_vs_players_range: 190.438,
    range_attack_vs_players_cav: 92.36,
    range_attack_vs_players_siege: 4.0,
    range_defense_vs_players_cav: 160.993,
    range_defense_vs_players_inf: 262.878,
    range_defense_vs_players_range: 74.795,
    range_defense_vs_players_siege: 4.0
}])