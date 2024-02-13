#> ui:brewing/brew/check
# 醸造できるか確認

# 素材スロット内にアイテムがあるか確認
    execute if data storage ui: NewItems[{Slot:10b,tag:{Menu:{Brewable:1b}}}] run scoreboard players add $BrewIngredients Temporary 1
    execute if data storage ui: NewItems[{Slot:11b,tag:{Menu:{Brewable:1b}}}] run scoreboard players add $BrewIngredients Temporary 1
    execute if data storage ui: NewItems[{Slot:12b,tag:{Menu:{Brewable:1b}}}] run scoreboard players add $BrewIngredients Temporary 1
    execute if score $BrewIngredients Temporary matches 1.. run function ui:brewing/brew/_
    scoreboard players reset $BrewIngredients Temporary