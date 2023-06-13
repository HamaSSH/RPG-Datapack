#> item:fishing/magma/float
# マグマ内のウキ用のアイテムに対しての処理

# 早めに浮く
    scoreboard players add @s Timer 1
    execute if score @s Timer matches 5.. if predicate core:percentage/10 run tp @s ~ ~-0.03 ~
    execute if score @s Timer matches 5.. if block ~ ~0.5 ~ lava run tp @s ~ ~0.03 ~

# 針が見当たらない！→ kill
    execute unless entity @e[type=minecraft:fishing_bobber,distance=..2,limit=1] run kill @s