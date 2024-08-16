#> ui:enchanting/enchant/lore/remove
# loreの不要部分の削除

data remove storage ui: ItemData.lore[0]
scoreboard players remove $LoreLength Temporary 1
execute if score $LoreLength Temporary matches 1.. run function ui:enchanting/enchant/lore/remove