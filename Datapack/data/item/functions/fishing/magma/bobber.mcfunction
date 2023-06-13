#> item:fishing/magma/bobber
# マグマ内のfishing_bobberに対しての処理

# ウキをウキ用アイテムにひっかける
    scoreboard players add @s Timer 1
    execute if score @s Timer matches 2 run ride @s dismount
    execute if score @s Timer matches 2 run tp ~ ~0.46 ~

# 針が地面に引っかかっちゃった！→ kill
    execute unless entity @e[type=minecraft:item,distance=..1,limit=1] run kill @s