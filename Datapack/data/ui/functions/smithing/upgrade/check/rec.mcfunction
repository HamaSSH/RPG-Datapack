#> ui:smithing/upgrade/check/rec
# 強化用アイテムの所持数と必要数のCountの比較

execute store result score $RequiredItemCount Temporary run data get storage ui: Material[0].Count
execute on vehicle on vehicle on attacker run function ui:clear_item/0 with storage ui: Material[0]
execute if score $ItemCount Temporary < $RequiredItemCount Temporary run tag @s remove Upgradable
scoreboard players reset $RequiredItemCount Temporary
scoreboard players reset $ItemCount Temporary

# 強化用アイテムが尽きるまで再帰
    data remove storage ui: Material[0]
    execute unless data storage ui: Material[] run data remove storage ui: Material
    execute if data storage ui: Material[] run function ui:smithing/upgrade/check/rec