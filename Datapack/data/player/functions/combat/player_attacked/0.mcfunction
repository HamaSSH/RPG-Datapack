#> player:combat/player_attacked/0
# モブを絞り込む (1桁目の1/0)

execute if entity @a[tag=Attacker,advancements={player:combat/player_attacked={MobID0.0=true}}] if entity @s[tag=MobID0.0] run function player:combat/player_attacked/detected
execute if entity @a[tag=Attacker,advancements={player:combat/player_attacked={MobID0.1=true}}] if entity @s[tag=MobID0.1] run function player:combat/player_attacked/detected