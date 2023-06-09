#> item:collect/reduce_durability
# ツールの耐久値を減らす

# プレイヤー SelectedItem → storage
    data modify storage item: Data set from entity @s SelectedItem
    execute store result score $Use Temporary run data get storage item: Data.tag.Use
    execute store result score $Durability Temporary run data get storage item: Data.tag.Durability
    execute store result score $Remain Temporary run data get storage item: Data.tag.Durability

# 使用回数 SelectedItem.tag.Use を1加算
    execute store result storage item: Data.tag.Use int 1 run scoreboard players add $Use Temporary 1
    item modify entity @s weapon.mainhand item:collect/increment_use

# 耐久値計算＋耐久値バー設定
    scoreboard players operation $Remain Temporary -= $Use Temporary
    execute if data storage item: Data{id:"minecraft:shears"} run scoreboard players operation $Use Temporary *= #229 Constant
    execute unless data storage item: Data{id:"minecraft:shears"} run scoreboard players operation $Use Temporary *= #56 Constant
    scoreboard players operation $Use Temporary /= $Durability Temporary
    execute store result storage item: Data.Damage int 1 run scoreboard players add $Use Temporary 1
    item modify entity @s weapon.mainhand item:collect/damage

# 耐久値のLore編集
    item modify entity @s weapon.mainhand item:collect/remain

# もし耐久値が0になったら壊れる
    execute if score $Remain Temporary matches 0 run function item:collect/no_durability

# リセット
    data remove storage item: Data
    scoreboard players reset $Use
    scoreboard players reset $Durability
    scoreboard players reset $Remain