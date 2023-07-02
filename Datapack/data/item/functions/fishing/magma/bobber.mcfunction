#> item:fishing/magma/bobber
# マグマ内のfishing_bobberに対しての処理

# ウキをウキ用アイテムにひっかける
    scoreboard players add @s Timer 1
    execute if score @s Timer matches 2 run ride @s dismount
    execute if score @s Timer matches 2 run tp ~ ~0.46 ~

# ランダムな浮き沈み
    execute if score @s Timer matches 2.. positioned ~ ~-0.2 ~ as @e[type=item,tag=!BobberHop,distance=..0.1] if block ~ ~0.41 ~ lava at @s run function item:fishing/magma/game/particle/hop
    execute if score @s Timer matches 2.. positioned ~ ~-0.2 ~ as @e[type=item,distance=..0.1] unless block ~ ~0.4 ~ lava if predicate core:percentage/60 run function item:fishing/magma/game/float
    execute if score @s Timer matches 2.. positioned ~ ~-0.2 ~ as @e[type=item,distance=..0.1] unless block ~ ~0.41 ~ lava run tag @s remove BobberHop
# 釣りゲームの再現
    execute unless entity @s[tag=GameStart] run function item:fishing/magma/attract_fish
    execute if entity @s[tag=GameStart] run function item:fishing/magma/game/tick

# 針が地面に引っかかっちゃった！→ kill
    execute unless entity @e[type=item,distance=..1,limit=1] run kill @s