#> ui:enchanting/enchant/check
# エンチャントできるか確認

# スロット内に適したアイテムがあるか確認
    execute if data storage ui: NewItems[{Slot:10b,components:{"minecraft:custom_data":{ui:{enchantable:1b}}}}] run scoreboard players add $CanEnchant Temporary 1
    execute if data storage ui: NewItems[{Slot:12b,components:{"minecraft:custom_data":{ui:{enchant_item:1b}}}}] run scoreboard players add $CanEnchant Temporary 1
    execute if data storage ui: NewItems[{Slot:13b,components:{"minecraft:custom_data":{ui:{enchant_catalyst:1b}}}}] run scoreboard players add $CanEnchant Temporary 1
    execute if score $CanEnchant Temporary matches 3 run function ui:enchanting/enchant/_

# 効果音
    execute if entity @s[tag=PlaysoundOnce] on vehicle on vehicle on attacker run playsound block.amethyst_block.break master @s ~ ~ ~ 0.2 0.7
    execute if entity @s[tag=PlaysoundOnce] on vehicle on vehicle on attacker run playsound item.firecharge.use master @s ~ ~ ~ 0.05 0.9
    execute if entity @s[tag=PlaysoundOnce] on vehicle on vehicle on attacker run playsound block.candle.extinguish master @s ~ ~ ~ 0.5 0.75
    execute if entity @s[tag=PlaysoundOnce] on vehicle on vehicle on attacker run playsound block.candle.extinguish master @s ~ ~ ~ 0.5 1.2

# リセット
    tag @s remove PlaysoundOnce
    scoreboard players reset $CanEnchant Temporary