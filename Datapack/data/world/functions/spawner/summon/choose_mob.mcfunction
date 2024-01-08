#> world:spawner/summon/choose_mob
# 召喚するモブを抽選

execute store result score $Entry Temporary if data storage world: Spawner.Data.SpawnPotentials[]
execute store result storage world: Spawner.Entry int 1 run scoreboard players remove $Entry Temporary 1
execute if score $Entry Temporary matches 1.. run function world:spawner/summon/random with storage world: Spawner
execute if score $Entry Temporary matches 0 run data modify storage world: Spawner.Random set value 0
scoreboard players reset $Entry Temporary