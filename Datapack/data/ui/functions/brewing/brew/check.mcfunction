#> ui:brewing/brew/check
# 醸造できるか確認

# 素材スロット内にアイテムがあるか確認
    execute if data storage ui: Items[{Slot:10b,tag:{Menu:{Brewable:1b}}}] run tag @s add Brewable
    execute if data storage ui: Items[{Slot:11b,tag:{Menu:{Brewable:1b}}}] run tag @s add Brewable
    execute if data storage ui: Items[{Slot:12b,tag:{Menu:{Brewable:1b}}}] run tag @s add Brewable
    execute if entity @s[tag=Brewable] run function ui:brewing/brew/_
    tag @s remove Brewable