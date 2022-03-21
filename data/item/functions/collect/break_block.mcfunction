# プレイヤーSelectedItem → storage
    data modify storage item:temp Data set from entity @s SelectedItem
    execute store result score $Damage Temporary run data get storage item:temp Data.tag.collect.damage
    execute store result score $Durability Temporary run data get storage item:temp Data.tag.collect.durability
    execute store result score $Remain Temporary run data get storage item:temp Data.tag.collect.durability
# 使用回数を1増やして collect.damage に加算
    execute store result storage item:temp Data.tag.collect.damage int 1 run scoreboard players add $Damage Temporary 1
    item modify entity @s weapon.mainhand item:collect/use_tool
# 耐久値計算＋耐久値バー設定
    scoreboard players operation $Remain Temporary -= $Damage Temporary
    scoreboard players operation $Damage Temporary *= #229 Constant
    scoreboard players operation $Damage Temporary /= $Durability Temporary
    execute store result storage item:temp Data.Damage int 1 run scoreboard players add $Damage Temporary 1
    item modify entity @s weapon.mainhand item:collect/damage
# もし耐久値が0になったら壊れる
    execute if score $Remain Temporary matches 0 run function item:collect/no_durability
# リセット
    scoreboard players reset $Damage
    scoreboard players reset $Durability
    scoreboard players reset $Remain
    advancement revoke @s only item:break_block