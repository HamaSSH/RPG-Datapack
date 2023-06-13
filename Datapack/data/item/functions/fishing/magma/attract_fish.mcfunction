#> item:fishing/magma/attract_fish
# Lureエンチャントのレベルに応じて釣りゲームの開始

# 確率が通ればゲーム開始
    execute if score @s Timer matches 100.. if score @s level matches 0 if predicate item:fishing/0 run tag @s add GameStart
    execute if score @s Timer matches 100.. if score @s level matches 1 if predicate item:fishing/1 run tag @s add GameStart
    execute if score @s Timer matches 100.. if score @s level matches 2 if predicate item:fishing/2 run tag @s add GameStart
    execute if score @s Timer matches 100.. if score @s level matches 3 if predicate item:fishing/3 run tag @s add GameStart
    execute if score @s Timer matches 100.. if score @s level matches 4 if predicate item:fishing/4 run tag @s add GameStart
    execute if score @s Timer matches 20.. if score @s level matches 5.. if predicate item:fishing/5 run tag @s add GameStart

# 一番待つ場合
    execute if score @s level matches 0 if score @s Timer matches 600.. run tag @s add GameStart
    execute if score @s level matches 1 if score @s Timer matches 500.. run tag @s add GameStart
    execute if score @s level matches 2 if score @s Timer matches 400.. run tag @s add GameStart
    execute if score @s level matches 3 if score @s Timer matches 300.. run tag @s add GameStart
    execute if score @s level matches 4 if score @s Timer matches 200.. run tag @s add GameStart
    execute if score @s level matches 5.. if score @s Timer matches 150.. run tag @s add GameStart