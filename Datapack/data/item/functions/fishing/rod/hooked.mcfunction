#> item:fishing/rod/hooked
# マグマ内で釣り竿を引いた際の処理

say hi
tag @s add HookedRod

# 釣りの獲得アイテムのMotion再現 ((($PlayerPosY - $ItemPosY) * 10700 + 19500) * 0.00001)
    execute store result score $PlayerPosY Temporary run data get entity @s Pos[1] 10700
    execute as @e[type=item] if score @s PlayerID = @p[tag=HookedRod] PlayerID run data modify storage item: Motion set from entity @s Motion
    execute as @e[type=item] if score @s PlayerID = @p[tag=HookedRod] PlayerID store result score $ItemPosY Temporary run data get entity @s Pos[1] 10700
    scoreboard players operation $PlayerPosY Temporary -= $ItemPosY Temporary
    execute store result storage item: Motion[1] double 0.00001 run scoreboard players add $PlayerPosY Temporary 19500

# 抽選
    execute as @e[type=item,tag=Fishable] if score @s PlayerID = @p[tag=HookedRod] PlayerID at @s run loot spawn ~ ~ ~ loot item:fishing/loot
    execute as @e[type=item,tag=Fishable] if score @s PlayerID = @p[tag=HookedRod] PlayerID at @s as @e[type=item,distance=..0] run function item:fishing/loot_table

# ウキ用のアイテムと魚影用のMarkerをkill
    execute as @e[type=item] if score @s PlayerID = @p[tag=HookedRod] PlayerID run kill @s
    execute as @e[type=marker,tag=FishingStart] if score @s PlayerID = @p[tag=HookedRod] PlayerID run kill @s

# 後処理
    tag @s remove HookedRod
    scoreboard players reset $PlayerPosY Temporary
    scoreboard players reset $ItemPosY Temporary
    data remove storage item: Motion
    advancement revoke @s only item:fishing/hook