#> player:combat/player_attacked/1
# モブを絞り込む (2桁目の1/0)

execute if entity @p[tag=Attacker,advancements={player:combat/player_attacked={MobID1.0=true}}] if entity @s[tag=MobID1.0] run function player:combat/player_attacked/0
execute if entity @p[tag=Attacker,advancements={player:combat/player_attacked={MobID1.1=true}}] if entity @s[tag=MobID1.1] run function player:combat/player_attacked/0