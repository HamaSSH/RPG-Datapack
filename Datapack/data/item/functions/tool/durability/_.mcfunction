#> item:tool/durability/_
# ツールのカスタム耐久値操作

# プレイヤー SelectedItem → storage
    data modify storage item: Data set from entity @s SelectedItem.components

    execute store result score $MaxDurability Temporary run data get storage item: Data.minecraft:max_damage
    execute store result score $RemainingUse Temporary run data get storage item: Data.minecraft:max_damage
    execute store result score $Damage Temporary run data get storage item: Data.minecraft:damage
    scoreboard players operation $RemainingUse Temporary -= $Damage Temporary
# 新しいツールデータ設定＆Lore編集
    data modify storage item: Lore set from storage item: Data.minecraft:lore
    item modify entity @s weapon.mainhand item:tool/durability/_

# リセット
    data remove storage item: Data
    data remove storage item: Lore
    scoreboard players reset $Damage Temporary
    scoreboard players reset $MaxDurability Temporary
    scoreboard players reset $RemainingUse Temporary
    advancement revoke @s only player:trigger/used_item/tool