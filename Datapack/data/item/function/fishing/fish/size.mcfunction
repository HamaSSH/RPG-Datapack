#> item:fishing/fish/size
# 魚のサイズの決定

# luck値に応じて抽選範囲を狭くする
    execute store result score $AddSize Temporary run data get storage item: Fish.max
    execute store result score $SizeMin Temporary run data get storage item: Fish.min
    scoreboard players operation $AddSize Temporary -= $SizeMin Temporary
    scoreboard players operation $AddSize Temporary *= @p[advancements={player:trigger/used_item/fishing_rod=true}] LUK
    scoreboard players operation $AddSize Temporary /= #2000 Constant
    scoreboard players operation $SizeMin Temporary += $AddSize Temporary
    execute store result storage item: Fish.min_luk int 1 run scoreboard players get $SizeMin Temporary

# リセット
    scoreboard players reset $AddSize Temporary
    scoreboard players reset $SizeMin Temporary