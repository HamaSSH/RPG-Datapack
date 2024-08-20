#> ui:smithing/repair/check
# ツールが少しでも消耗しているか検知→修理

tag @s add Repairable

# 修理するアイテムのデータ→storage
    data modify storage ui: ItemData set from storage ui: NewItems[{Slot:10b}].components.minecraft:custom_data

# 十分なゴールドを持っているか
    function ui:smithing/repair/item/gold
    execute on vehicle on vehicle on attacker run scoreboard players operation $PlayerGold Temporary = @s Gold
    execute unless score $RepairGold Temporary <= $PlayerGold Temporary run tag @s remove Repairable

# durability > remaining_use で修理
    execute store result score $Durability Temporary run data get storage ui: ItemData.tool.durability
    execute store result score $RemainingUse Temporary run data get storage ui: ItemData.tool.remaining_use
    execute if score $Durability Temporary = $RemainingUse Temporary run tag @s remove Repairable
    execute if entity @s[tag=Repairable] run function ui:smithing/repair/_

# リセット
    data remove storage ui: ItemData
    scoreboard players reset $ItemRarity Temporary
    scoreboard players reset $ToolGrade Temporary
    scoreboard players reset $Durability Temporary
    scoreboard players reset $RemainingUse Temporary
    scoreboard players reset $RepairGold Temporary
    scoreboard players reset $PlayerGold Temporary