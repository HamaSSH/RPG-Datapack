#> ui:smithing/repair/check
# ツールが少しでも消耗しているか検知→修理

# durability > remaining_use で修理
    execute store result score $Durability Temporary run data get storage ui: NewItems[{Slot:10b}].components.minecraft:custom_data.tool.durability
    execute store result score $RemainingUse Temporary run data get storage ui: NewItems[{Slot:10b}].components.minecraft:custom_data.tool.remaining_use
    execute if score $Durability Temporary > $RemainingUse Temporary run function ui:smithing/repair/_

# リセット
    scoreboard players reset $Durability Temporary
    scoreboard players reset $RemainingUse Temporary