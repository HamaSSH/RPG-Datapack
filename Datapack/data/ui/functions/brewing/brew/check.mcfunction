#> ui:brewing/brew/check
# 醸造できるか確認

# 素材スロット内にアイテムがあるか確認 #TODO: 入れるアイテム数によって効果時間とエフェクト効果のバフの比率が違ってくる
    execute if data storage ui: NewItems[{Slot:10b,tag:{UI:{Brewable:1b}}}] run scoreboard players add $BrewIngredients Temporary 1
    execute if data storage ui: NewItems[{Slot:11b,tag:{UI:{Brewable:1b}}}] run scoreboard players add $BrewIngredients Temporary 1
    execute if data storage ui: NewItems[{Slot:12b,tag:{UI:{Brewable:1b}}}] run scoreboard players add $BrewIngredients Temporary 1
    execute if score $BrewIngredients Temporary matches 3 run function ui:brewing/brew/_

# リセット
    scoreboard players reset $BrewIngredients Temporary