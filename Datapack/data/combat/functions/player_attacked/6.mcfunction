#> combat:player_attacked/6
# モブを絞り込む (7桁目の1/0)

execute if entity @a[tag=Attacker,advancements={combat:player_attacked={MobID6.0=true}}] if entity @s[tag=MobID6.0] run function combat:player_attacked/5
execute if entity @a[tag=Attacker,advancements={combat:player_attacked={MobID6.1=true}}] if entity @s[tag=MobID6.1] run function combat:player_attacked/5