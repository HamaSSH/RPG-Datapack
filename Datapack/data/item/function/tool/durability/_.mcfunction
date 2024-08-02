#> item:tool/durability/_
# ツールのカスタム耐久値操作

# プレイヤー SelectedItem → storage
    data modify storage item: Data set from entity @s SelectedItem.components
    execute if entity @s[tag=OffhandShears] run data modify storage item: Data set from entity @s Inventory[{Slot:-106b}].components
    execute if entity @s[tag=OffhandRod] run data modify storage item: Data set from entity @s Inventory[{Slot:-106b}].components

# 使用可能回数を1減らす
    execute store result score $RemainingUse Temporary run data get storage item: Data.minecraft:custom_data.tool.remaining_use
    execute store result storage item: Data.minecraft:custom_data.tool.remaining_use int 1 run scoreboard players remove $RemainingUse Temporary 1
    advancement grant @s only asset:tips/repair

# 耐久値計算＋耐久値バー設定
    execute store result score $MaxDurability Temporary run data get storage item: Data.minecraft:custom_data.tool.durability
    scoreboard players operation $DurabilityBar Temporary = $RemainingUse Temporary
    scoreboard players operation $DurabilityBar Temporary *= #100 Constant
    scoreboard players operation $DurabilityBar Temporary /= $MaxDurability Temporary
    execute store result storage item: Data.minecraft:custom_data.tool.durability_bar float 0.01 run scoreboard players get $DurabilityBar Temporary

# もし耐久値が0になったら壊れる
    execute if score $RemainingUse Temporary matches 0 run function item:tool/durability/zero

# アイテムデータ編集
    execute unless entity @s[tag=OffhandShears] unless entity @s[tag=OffhandRod] run item modify entity @s weapon.mainhand item:tool/durability/_
    execute if entity @s[tag=OffhandShears] run item modify entity @s weapon.offhand item:tool/durability/_
    execute if entity @s[tag=OffhandRod] run item modify entity @s weapon.offhand item:tool/durability/_

# リセット
    data remove storage item: Data
    scoreboard players reset $MaxDurability Temporary
    scoreboard players reset $RemainingUse Temporary
    scoreboard players reset $DurabilityBar Temporary
    advancement revoke @s only player:trigger/used_item/tool