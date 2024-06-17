#> player:combat/player_hurt/1
# モブを絞り込む (2桁目の1/0)

execute if entity @a[tag=Victim,advancements={player:combat/player_hurt={MobID1.0=true}}] if entity @s[tag=MobID1.0] run function player:combat/player_hurt/0
execute if entity @a[tag=Victim,advancements={player:combat/player_hurt={MobID1.1=true}}] if entity @s[tag=MobID1.1] run function player:combat/player_hurt/0