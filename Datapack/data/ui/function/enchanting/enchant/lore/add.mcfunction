#> ui:enchanting/enchant/lore/add
# lore部分の再帰追加処理

data modify storage ui: NewLore append from storage ui: ItemData.lore[0]
data remove storage ui: ItemData.lore[0]
execute unless data storage ui: ItemData.lore[0] run data remove storage ui: ItemData.lore
execute if data storage ui: ItemData.lore[0] run function ui:enchanting/enchant/lore/add