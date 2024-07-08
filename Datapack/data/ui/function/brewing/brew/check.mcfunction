#> ui:brewing/brew/check
# 醸造できるか確認

# 素材スロット内にアイテムがあるか確認
    execute if data storage ui: NewItems[{Slot:10b,components:{"minecraft:custom_data":{ui:{brewable:1b}}}}] run scoreboard players add $BrewIngredients Temporary 1
    execute if data storage ui: NewItems[{Slot:11b,components:{"minecraft:custom_data":{ui:{brewable:1b}}}}] run scoreboard players add $BrewIngredients Temporary 1
    execute if data storage ui: NewItems[{Slot:12b,components:{"minecraft:custom_data":{ui:{brewable:1b}}}}] run scoreboard players add $BrewIngredients Temporary 1
    execute if score $BrewIngredients Temporary matches 3 run function ui:brewing/brew/_

# 効果音
    execute if entity @s[tag=PlaysoundOnce] on vehicle on vehicle on attacker run playsound entity.dolphin.jump master @s ~ ~ ~ 0.15 1.6
    execute if entity @s[tag=PlaysoundOnce] on vehicle on vehicle on attacker run playsound block.candle.extinguish master @s ~ ~ ~ 1 1.2
    execute if entity @s[tag=PlaysoundOnce] on vehicle on vehicle on attacker run playsound block.candle.extinguish master @s ~ ~ ~ 1 1.5
    execute if entity @s[tag=PlaysoundOnce] on vehicle on vehicle on attacker run playsound block.candle.extinguish master @s ~ ~ ~ 1 1.8
    execute if entity @s[tag=PlaysoundOnce] run tag @s remove PlaysoundOnce

# リセット
    scoreboard players reset $BrewIngredients Temporary