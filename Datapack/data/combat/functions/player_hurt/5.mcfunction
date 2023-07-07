#> combat:player_hurt/5
# モブを絞り込む (6桁目の1/0)

execute if entity @a[tag=Victim,advancements={combat:player_hurt={MobID5.0=true}}] if entity @s[tag=MobID5.0] run function combat:player_hurt/4
execute if entity @a[tag=Victim,advancements={combat:player_hurt={MobID5.1=true}}] if entity @s[tag=MobID5.1] run function combat:player_hurt/4