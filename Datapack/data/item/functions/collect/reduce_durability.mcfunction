#> item:collect/reduce_durability
# ツールの耐久値を減らす

# プレイヤー SelectedItem → storage
    data modify storage item: Data set from entity @s SelectedItem
    execute store result score $Use Temporary run data get storage item: Data.tag.Use
    execute store result score $MaxDurability Temporary run data get storage item: Data.tag.Durability
    execute store result score $RemainingUse Temporary run data get storage item: Data.tag.Durability

# 使用回数 SelectedItem.tag.Use を1加算
    execute store result storage item: Data.tag.Use int 1 run scoreboard players add $Use Temporary 1

# 耐久値計算
    scoreboard players operation $RemainingUse Temporary -= $Use Temporary
    scoreboard players set $ToolDurability Temporary 56
    execute if data storage item: Data{id:"minecraft:shears"} run scoreboard players set $ToolDurability Temporary 229
    execute if data storage item: Data{id:"minecraft:fishing_rod"} run scoreboard players set $ToolDurability Temporary 61
    scoreboard players operation $Use Temporary *= $ToolDurability Temporary
    scoreboard players operation $Use Temporary /= $MaxDurability Temporary
    execute store result storage item: Data.Damage int 1 run scoreboard players add $Use Temporary 1

# もし耐久値が0になったら壊れる
    execute if score $RemainingUse Temporary matches 0 run function item:collect/no_durability

# アイテムのデータ編集
    item modify entity @s weapon.mainhand item:collect/increment_use
    item modify entity @s weapon.mainhand item:collect/damage
    item modify entity @s weapon.mainhand item:collect/edit_lore

# リセット
    data remove storage item: Data
    scoreboard players reset $Use
    scoreboard players reset $MaxDurability
    scoreboard players reset $RemainingUse
    scoreboard players reset $ToolDurability