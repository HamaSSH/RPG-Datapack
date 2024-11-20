#> item:fishing/rod/used
# 釣り竿を使用したことの検知

tag @s add UsedRod

# 耐久値を減らす
    execute if items entity @s weapon.mainhand fishing_rod run tag @s add MainhandRod
    execute unless entity @s[tag=MainhandRod] if items entity @s weapon.offhand fishing_rod run tag @s add OffhandRod
    function item:tool/durability/_

# 釣った魚に対しての処理
    execute as @e[type=item] if data entity @s Item.components.minecraft:custom_data{item_type:"fishing_loot"} at @s run function item:fishing/_

# 全種類釣っているか検知
    execute unless data storage zukan:fish Data[{count:0}] run advancement grant @a only asset:achievement/2.5
    execute unless data storage zukan:fish Data[{count:0}] run data modify storage global: fish.item_id set value "completed_fish_zukan"
    execute store result score $FishKind Temporary if data storage zukan:fish Data[]
    execute store result score $KingKind Temporary if data storage zukan:fish Data[{crown:"🥇"}]
    execute if score $KingKind Temporary = $FishKind Temporary run advancement grant @a only player:trigger/achievement_0.1
    execute if score $KingKind Temporary = $FishKind Temporary run data modify storage global: fish.item_id set value "perfect_fish_zukan"

# レベルが上がらないように
    kill @e[type=experience_orb,distance=..1]

# リセット
    tag @s remove UsedRod
    tag @s remove MainhandRod
    tag @s remove OffhandRod
    scoreboard players reset $FishKind Temporary
    scoreboard players reset $KingKind Temporary
    advancement revoke @s only player:trigger/used_item/fishing_rod