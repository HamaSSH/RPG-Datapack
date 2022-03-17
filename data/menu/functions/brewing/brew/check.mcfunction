# 素材スロットに入っているアイテムをカウント
    execute if data storage menu:temp Data.Items[{Slot:10b,tag:{menu:{brewable:1b}}}] run scoreboard players add $BrewIngredients Temporary 1
    execute if data storage menu:temp Data.Items[{Slot:11b,tag:{menu:{brewable:1b}}}] run scoreboard players add $BrewIngredients Temporary 1
    execute if data storage menu:temp Data.Items[{Slot:12b,tag:{menu:{brewable:1b}}}] run scoreboard players add $BrewIngredients Temporary 1
    execute if score $BrewIngredients Temporary matches 1.. run function menu:brewing/brew/_
# リセット
    scoreboard players reset $BrewIngredients