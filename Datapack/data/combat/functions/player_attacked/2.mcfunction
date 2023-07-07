#> combat:player_attacked/2
# モブを絞り込む (3桁目の1/0)

execute if entity @a[tag=Attacker,advancements={combat:player_attacked={MobID2.0=true}}] if entity @s[tag=MobID2.0] run function combat:player_attacked/1
execute if entity @a[tag=Attacker,advancements={combat:player_attacked={MobID2.1=true}}] if entity @s[tag=MobID2.1] run function combat:player_attacked/1