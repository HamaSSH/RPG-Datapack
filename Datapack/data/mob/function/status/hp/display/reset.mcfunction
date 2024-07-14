#> mob:status/hp/display/reset
# 戦闘中でなければ名前表示を元に戻す

# 名前を適用
    data modify entity 83a-51-1-0-1 ArmorItems[3] set value {id:"glass_bottle"}
    data modify entity 83a-51-1-0-1 ArmorItems[3].components.minecraft:custom_name set from entity @s ArmorItems[3].components.minecraft:custom_data.MobName
    data modify entity @s CustomName set from entity @s ArmorItems[3].components.minecraft:custom_data.MobName
    execute on passengers if entity @s[tag=NameDisplay] run data modify entity @s CustomName set from entity 83a-51-1-0-1 ArmorItems[3].components.minecraft:custom_name
    item replace entity 83a-51-1-0-1 armor.head with air

# リセット
    scoreboard players reset @s InCombat
    tag @s remove InCombat