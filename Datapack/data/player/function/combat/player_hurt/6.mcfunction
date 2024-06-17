#> player:combat/player_hurt/6
# モブを絞り込む (7桁目の1/0)

execute if entity @a[tag=Victim,advancements={player:combat/player_hurt={MobID6.0=true}}] if entity @s[tag=MobID6.0] run function player:combat/player_hurt/5
execute if entity @a[tag=Victim,advancements={player:combat/player_hurt={MobID6.1=true}}] if entity @s[tag=MobID6.1] run function player:combat/player_hurt/5