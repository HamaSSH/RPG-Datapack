# 素材スロットに入っているアイテムをカウント
    execute if data storage menu:temp Data.refresh[{Slot:11b,tag:{menu:{combinable:1b}}}] run scoreboard players add $CombineIngredients Temporary 1
    execute if data storage menu:temp Data.refresh[{Slot:12b,tag:{menu:{combinable:1b}}}] run scoreboard players add $CombineIngredients Temporary 1
    execute if data storage menu:temp Data.refresh[{Slot:13b,tag:{menu:{combinable:1b}}}] run scoreboard players add $CombineIngredients Temporary 1
    execute if score $CombineIngredients Temporary matches 1.. run function menu:upgrading/combine/_
# リセット
    scoreboard players reset $CombineIngredients