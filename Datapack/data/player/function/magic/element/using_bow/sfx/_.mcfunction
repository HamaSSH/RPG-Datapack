#> player:magic/element/using_bow/sfx/_
# 弓を弾き絞っているときの属性纏い

execute if entity @s[tag=ElementFire] run function player:magic/element/using_bow/sfx/fire
execute if predicate player:is_element/water run function player:magic/element/using_bow/sfx/water
execute if entity @s[tag=ElementThunder] run function player:magic/element/using_bow/sfx/thunder
execute if entity @s[tag=ElementEarth] run function player:magic/element/using_bow/sfx/earth
execute if entity @s[tag=ElementWind] run function player:magic/element/using_bow/sfx/wind