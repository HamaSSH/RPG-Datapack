##########
#>
#

# 素材スロットに入っているアイテムをカウント
    scoreboard players add $CombineIngredients Temporary 0
    execute unless data storage menu:temp Data.Items[{Slot:10b}].tag.menu.combine[{Slot:11b,tag:{menu:{combinable:1b}}}] if data storage menu:temp Data.refresh[{Slot:11b,tag:{menu:{combinable:1b}}}] run scoreboard players add $CombineIngredients Temporary 1
    execute unless data storage menu:temp Data.Items[{Slot:10b}].tag.menu.combine[{Slot:12b,tag:{menu:{combinable:1b}}}] if data storage menu:temp Data.refresh[{Slot:12b,tag:{menu:{combinable:1b}}}] run scoreboard players add $CombineIngredients Temporary 1
    execute unless data storage menu:temp Data.Items[{Slot:10b}].tag.menu.combine[{Slot:13b,tag:{menu:{combinable:1b}}}] if data storage menu:temp Data.refresh[{Slot:13b,tag:{menu:{combinable:1b}}}] run scoreboard players add $CombineIngredients Temporary 1
    execute if score $CombineIngredients Temporary matches 1.. run function menu:upgrading/combine/_
# もしアイテムに変化がなければリセット
    execute if score $CombineIngredients Temporary matches 0 run function menu:upgrading/combine/move
# リセット
    scoreboard players reset $CombineIngredients