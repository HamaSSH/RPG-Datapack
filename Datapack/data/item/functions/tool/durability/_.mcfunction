#> item:tool/durability/_
# ツールのカスタム耐久値操作

# プレイヤー SelectedItem → storage
    data modify storage item: Data set from entity @s SelectedItem
    data modify storage item: Tool set from storage item: Data.tag.Tool
    execute store result score $Use Temporary run data get storage item: Tool.Use
    execute store result score $MaxDurability Temporary run data get storage item: Tool.Durability
    execute store result score $RemainingUse Temporary run data get storage item: Tool.Durability

# 使用回数を1加算
    execute store result storage item: Tool.Use int 1 run scoreboard players add $Use Temporary 1

# 耐久値計算＋耐久値バー設定
    scoreboard players operation $RemainingUse Temporary -= $Use Temporary
    scoreboard players set $ToolDurability Temporary 56
    execute if data storage item: Data{id:"minecraft:brush"} run scoreboard players set $ToolDurability Temporary 62
    execute if data storage item: Data{id:"minecraft:shears"} run scoreboard players set $ToolDurability Temporary 229
    execute if data storage item: Data{id:"minecraft:fishing_rod"} run scoreboard players set $ToolDurability Temporary 61
    scoreboard players operation $Use Temporary *= $ToolDurability Temporary
    scoreboard players operation $Use Temporary /= $MaxDurability Temporary
    execute store result storage item: Tool.Damage int 1 run scoreboard players add $Use Temporary 1

# 新しいツールデータ設定＆Lore編集
    data modify storage item: Lore set from storage item: Data.tag.display.Lore
    item modify entity @s weapon.mainhand item:tool/durability/_

# もし耐久値が0になったら壊れる
    execute if score $RemainingUse Temporary matches 0 run function item:tool/durability/zero

# リセット
    data remove storage item: Data
    data remove storage item: Tool
    data remove storage item: Lore
    scoreboard players reset $Use Temporary
    scoreboard players reset $MaxDurability Temporary
    scoreboard players reset $RemainingUse Temporary
    scoreboard players reset $ToolDurability Temporary
    advancement revoke @s only player:trigger/used_tool