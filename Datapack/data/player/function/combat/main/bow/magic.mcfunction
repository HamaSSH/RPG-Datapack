#> player:combat/main/bow/magic
# 弓のチャージ時間が短かったら魔法を使ったこととする

execute if entity @s[advancements={player:trigger/using_item/bow=true}] run scoreboard players add @s BowMagic 1
execute if entity @s[advancements={player:trigger/using_item/bow=false}] if score @s BowMagic matches ..2 run function player:trigger/right_click
execute if entity @s[advancements={player:trigger/using_item/bow=false}] run scoreboard players reset @s BowMagic