#> player:combat/main/bow/charged
# 弓の左クリック検知ができた場合の処理

execute if score @s ArrowLC matches 0 run playsound resource:custom.weapon.fail master @a ~ ~ ~ 1.0 1.0
execute if score @s ArrowLC matches 1.. run function player:combat/main/bow/arrow/summon/charged

# 矢を持っているか検知
    # data modify storage player: Inventory set from entity @s Inventory
    # scoreboard players set $Arrow Temporary 0
    # execute if entity @s[tag=QuiverEquipped] run function player:combat/main/bow/quiver/arrow_count
    # execute if score $Arrow Temporary matches 0 if score @s ArrowLC matches 1.. store result score $Arrow Temporary run clear @s arrow 1

# 魔法を発動しない場合、ArrowLCがあれば矢発射
    # execute unless predicate player:offhand_magic/_ if score @s ArrowLC matches 0 run playsound resource:custom.weapon.fail master @a ~ ~ ~ 1.0 1.0
    # execute unless predicate player:offhand_magic/_ if score @s ArrowLC matches 1.. if score $Arrow Temporary matches 0 run playsound resource:custom.weapon.fail master @a ~ ~ ~ 1.0 1.0
    # execute unless predicate player:offhand_magic/_ if score @s ArrowLC matches 1.. if score $Arrow Temporary matches 1.. run function player:combat/main/bow/arrow/summon/charged

# 魔法を発動する場合
    # スニークしている場合は魔法発動優先
    #     execute if predicate player:offhand_magic/_ if predicate lib:is_sneaking run function player:magic/trigger
    # # スニークしていない場合はArrowLC次第
    #     execute if predicate player:offhand_magic/_ unless predicate lib:is_sneaking if score @s ArrowLC matches 0 run function player:magic/trigger
    #     execute if predicate player:offhand_magic/_ unless predicate lib:is_sneaking if score @s ArrowLC matches 1.. if score $Arrow Temporary matches 0 run function player:magic/trigger
    #     execute if predicate player:offhand_magic/_ unless predicate lib:is_sneaking if score @s ArrowLC matches 1.. if score $Arrow Temporary matches 1.. run function player:combat/main/bow/arrow/summon/charged

# リセット
    data remove storage player: Inventory
    scoreboard players reset $Arrow Temporary