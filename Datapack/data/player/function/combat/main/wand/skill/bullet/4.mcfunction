#> player:combat/main/wand/skill/bullet/4
# ズドドドドのド(3)

# ダメージ
    data modify storage player: magic.damage set value 50

# 魔法呼び出し
    tag @s add TriggerMagic
    data modify storage asset:magic id set value 5401
    execute if entity @s[tag=ElementFire] run data modify storage asset:magic id set value 5101
    execute if predicate player:is_element/water run data modify storage asset:magic id set value 5201
    execute if entity @s[tag=ElementThunder] run data modify storage asset:magic id set value 5301
    execute if entity @s[tag=ElementEarth] run data modify storage asset:magic id set value 5401
    execute if entity @s[tag=ElementWind] run data modify storage asset:magic id set value 5501
    function #asset:magic/trigger
    tag @s remove TriggerMagic