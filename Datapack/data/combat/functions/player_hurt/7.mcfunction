#> combat:player_hurt/7
# モブを絞り込む (8桁目の1/0)

execute if entity @a[tag=Victim,advancements={combat:player_hurt={MobID7.0=true}}] if entity @s[tag=MobID7.0] run function combat:player_hurt/6
execute if entity @a[tag=Victim,advancements={combat:player_hurt={MobID7.1=true}}] if entity @s[tag=MobID7.1] run function combat:player_hurt/6