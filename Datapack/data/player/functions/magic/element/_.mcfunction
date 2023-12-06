#> player:magic/element/_
# 属性纏い

# 各属性の処理
    execute if entity @s[tag=ElementFire] unless score @s BowCharge matches 1.. run function player:magic/element/fire
    execute if entity @s[tag=ElementFire] if score @s BowCharge matches 1.. run function player:magic/element/using_bow/fire
    execute if entity @s[tag=ElementWater] unless score @s BowCharge matches 1.. run function player:magic/element/water
    execute if entity @s[tag=ElementWater] if score @s BowCharge matches 1.. run function player:magic/element/using_bow/water
    execute if entity @s[tag=ElementThunder] unless score @s BowCharge matches 1.. run function player:magic/element/thunder
    execute if entity @s[tag=ElementThunder] if score @s BowCharge matches 1.. run function player:magic/element/using_bow/thunder
    execute if entity @s[tag=ElementEarth] unless score @s BowCharge matches 1.. run function player:magic/element/earth
    execute if entity @s[tag=ElementEarth] if score @s BowCharge matches 1.. run function player:magic/element/using_bow/earth
    execute if entity @s[tag=ElementWind] run function player:magic/element/wind

# タイマー
    scoreboard players remove @s ElementTimer 1
    execute if score @s ElementTimer matches 0 run function player:magic/element/reset