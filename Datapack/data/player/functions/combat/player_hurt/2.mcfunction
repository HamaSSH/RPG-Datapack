#> player:combat/player_hurt/2
# モブを絞り込む (3桁目の1/0)

execute if entity @a[tag=Victim,advancements={player:combat/player_hurt={MobID2.0=true}}] if entity @s[tag=MobID2.0] run function player:combat/player_hurt/1
execute if entity @a[tag=Victim,advancements={player:combat/player_hurt={MobID2.1=true}}] if entity @s[tag=MobID2.1] run function player:combat/player_hurt/1