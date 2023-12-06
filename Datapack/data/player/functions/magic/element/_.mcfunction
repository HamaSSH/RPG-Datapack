#> player:magic/element/_
# 属性纏いのパーティクル

# 各属性の処理
    execute if entity @s[tag=ElementFire] run function player:magic/element/fire
    execute if entity @s[tag=ElementWater] run function player:magic/element/water
    execute if entity @s[tag=ElementThunder] run function player:magic/element/thunder
    execute if entity @s[tag=ElementEarth] run function player:magic/element/earth
    execute if entity @s[tag=ElementWind] run function player:magic/element/wind

# タイマー
    scoreboard players remove @s ElementTimer 1
    execute if score @s ElementTimer matches 0 run function player:magic/element/reset