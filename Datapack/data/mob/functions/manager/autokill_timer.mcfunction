#> mob:manager/autokill_timer
# 一定時間で始末するエンティティ

scoreboard players remove @s Timer 1
execute if score @s Timer matches 0 run function mob:manager/vanish