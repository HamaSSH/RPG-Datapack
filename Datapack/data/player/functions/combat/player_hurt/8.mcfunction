#> player:combat/player_hurt/8
# モブを絞り込む (9桁目の1/0)

execute if entity @a[tag=Victim,advancements={player:combat/player_hurt={MobID8.0=true}}] if entity @s[tag=MobID8.0] run function player:combat/player_hurt/7
execute if entity @a[tag=Victim,advancements={player:combat/player_hurt={MobID8.1=true}}] if entity @s[tag=MobID8.1] run function player:combat/player_hurt/7