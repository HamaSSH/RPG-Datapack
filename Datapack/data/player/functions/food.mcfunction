#> player:food
# 満腹度回復演出

effect give @s saturation 1 0 true
scoreboard players remove @s FoodSaturation 1
execute if score @s FoodSaturation matches 1 run scoreboard players reset @s FoodSaturation