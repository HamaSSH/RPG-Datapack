#> item:fishing/magma/game/pattern/_
# パターンごとの魚の導線

execute if score @s FishingPattern matches 0 as @e[type=marker,tag=FishingStart] if score @s PlayerID = $PlayerID Temporary at @s run function item:fishing/magma/game/pattern/0
execute if score @s FishingPattern matches 1 as @e[type=marker,tag=FishingStart] if score @s PlayerID = $PlayerID Temporary at @s run function item:fishing/magma/game/pattern/1
execute if score @s FishingPattern matches 2 as @e[type=marker,tag=FishingStart] if score @s PlayerID = $PlayerID Temporary at @s run function item:fishing/magma/game/pattern/2
execute if score @s FishingPattern matches 3 as @e[type=marker,tag=FishingStart] if score @s PlayerID = $PlayerID Temporary at @s run function item:fishing/magma/game/pattern/3
execute if score @s FishingPattern matches 4 as @e[type=marker,tag=FishingStart] if score @s PlayerID = $PlayerID Temporary at @s run function item:fishing/magma/game/pattern/4
execute if score @s FishingPattern matches 5 as @e[type=marker,tag=FishingStart] if score @s PlayerID = $PlayerID Temporary at @s run function item:fishing/magma/game/pattern/5
execute if score @s FishingPattern matches 6 as @e[type=marker,tag=FishingStart] if score @s PlayerID = $PlayerID Temporary at @s run function item:fishing/magma/game/pattern/6
execute if score @s FishingPattern matches 7 as @e[type=marker,tag=FishingStart] if score @s PlayerID = $PlayerID Temporary at @s run function item:fishing/magma/game/pattern/7
execute if score @s FishingPattern matches 8 as @e[type=marker,tag=FishingStart] if score @s PlayerID = $PlayerID Temporary at @s run function item:fishing/magma/game/pattern/8
execute if score @s FishingPattern matches 9 as @e[type=marker,tag=FishingStart] if score @s PlayerID = $PlayerID Temporary at @s run function item:fishing/magma/game/pattern/9
execute if score @s FishingPattern matches 10 as @e[type=marker,tag=FishingStart] if score @s PlayerID = $PlayerID Temporary at @s run function item:fishing/magma/game/pattern/10
execute if score @s FishingPattern matches 11 as @e[type=marker,tag=FishingStart] if score @s PlayerID = $PlayerID Temporary at @s run function item:fishing/magma/game/pattern/11
execute if score @s FishingPattern matches 12 as @e[type=marker,tag=FishingStart] if score @s PlayerID = $PlayerID Temporary at @s run function item:fishing/magma/game/pattern/12

# 後処理
    execute if score @s Timer matches 1100 as @e[type=marker,tag=FishingStart] if score @s PlayerID = $PlayerID Temporary run kill @s