##########
#>
#

# 素材スロットに入っているアイテムをカウント
    execute if data storage menu:temp Data.refresh[{Slot:10b,tag:{Menu:{Brewable:1b}}}] run scoreboard players add $BrewIngredients Temporary 1
    execute if data storage menu:temp Data.refresh[{Slot:11b,tag:{Menu:{Brewable:1b}}}] run scoreboard players add $BrewIngredients Temporary 1
    execute if data storage menu:temp Data.refresh[{Slot:12b,tag:{Menu:{Brewable:1b}}}] run scoreboard players add $BrewIngredients Temporary 1
    execute if score $BrewIngredients Temporary matches 1.. run function menu:brewing/brew/_
# リセット
    scoreboard players reset $BrewIngredients