#> item:tool/durability/_
# ツールのカスタム耐久値操作

# プレイヤー SelectedItem → storage
    execute if entity @s[tag=MainhandShears] run data modify storage item: Data set from entity @s SelectedItem.components
    execute if entity @s[tag=OffhandShears] run data modify storage item: Data set from entity @s Inventory[{Slot:-106b}].components

# ツールの耐久値/バー計算
    execute store result score $MaxDurability Temporary run data get storage item: Data.minecraft:max_damage
    execute store result score $Damage Temporary run data get storage item: Data.minecraft:custom_data.tool.damage
    execute store result storage item: Data.minecraft:custom_data.tool.damage int 1 run scoreboard players add $Damage Temporary 1
    scoreboard players operation $RemainingUse Temporary = $MaxDurability Temporary
    scoreboard players operation $RemainingUse Temporary -= $Damage Temporary
    scoreboard players operation $DurabilityBar Temporary = $RemainingUse Temporary
    scoreboard players operation $DurabilityBar Temporary *= #100 Constant
    scoreboard players operation $DurabilityBar Temporary /= $MaxDurability Temporary
    execute store result storage item: Data.minecraft:custom_data.tool.durability_bar float 0.01 run scoreboard players get $DurabilityBar Temporary

# 新しいツールデータ設定＆Lore編集
    data modify storage item: Lore set from storage item: Data.minecraft:lore
    execute if entity @s[tag=MainhandShears] run item modify entity @s weapon.mainhand item:tool/durability/_
    execute if entity @s[tag=OffhandShears] run item modify entity @s weapon.offhand item:tool/durability/_

# もし耐久値が0なら破壊
    execute if items entity @s weapon.* brush if score $RemainingUse Temporary matches ..0 run function item:tool/durability/zero_brush

# リセット
    data remove storage item: Data
    data remove storage item: Lore
    scoreboard players reset $Damage Temporary
    scoreboard players reset $MaxDurability Temporary
    scoreboard players reset $RemainingUse Temporary
    scoreboard players reset $DurabilityBar Temporary
    advancement revoke @s only player:trigger/used_item/tool