#> player:combat/player_attacked/5
# モブを絞り込む (6桁目の1/0)

execute if entity @a[tag=Attacker,advancements={player:combat/player_attacked={MobID5.0=true}}] if entity @s[tag=MobID5.0] run function player:combat/player_attacked/4
execute if entity @a[tag=Attacker,advancements={player:combat/player_attacked={MobID5.1=true}}] if entity @s[tag=MobID5.1] run function player:combat/player_attacked/4