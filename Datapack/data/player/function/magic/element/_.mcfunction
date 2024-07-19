#> player:magic/element/_
# 属性纏い

# 各属性の処理
    execute unless score @s UsingBow matches 1.. if entity @s[tag=ElementFire] run function player:magic/element/sfx/fire
    execute unless score @s UsingBow matches 1.. if predicate player:is_element/water run function player:magic/element/sfx/water
    execute unless score @s UsingBow matches 1.. if entity @s[tag=ElementThunder] run function player:magic/element/sfx/thunder
    execute unless score @s UsingBow matches 1.. if entity @s[tag=ElementEarth] run function player:magic/element/sfx/earth
    execute unless score @s UsingBow matches 1.. if entity @s[tag=ElementWind] run function player:magic/element/sfx/wind
    execute if score @s UsingBow matches 1.. run function player:magic/element/using_bow/sfx/_

# タイマー
    scoreboard players remove @s ElementTimer 1
    execute if score @s ElementTimer matches 0 run function player:magic/element/reset