#> ui:smithing/upgrade/clear/rec
# 強化用アイテムを順次clear

execute on vehicle on vehicle on attacker run function ui:clear_item/_ with storage ui: Material[0]

# 強化用アイテムが尽きるまで再帰
    data remove storage ui: Material[0]
    execute unless data storage ui: Material[] run data remove storage ui: Material
    execute if data storage ui: Material[] run function ui:smithing/upgrade/clear/rec