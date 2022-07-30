# 見た目設定
    execute unless data storage mob:temp Data.Armor[3].id run data modify storage mob:temp Data.Armor[3] set value {id:"minecraft:barrier",Count:1b}
    data modify entity @s ArmorItems set from storage mob:temp Data.Armor
    item modify entity @s armor.head mob:set_name
    data modify entity @s CustomName set from entity @s ArmorItems[3].tag.display.Name
    data modify entity @s ArmorItems[3].tag.ResetName set from entity @s ArmorItems[3].tag.display.Name
# 召喚演出
    particle minecraft:poof ~ ~0.5 ~ 0.2 0.5 0.2 0.01 20
# スコアセット
    execute store result score @s level run data get storage mob:temp Data.lvl
    execute store result score @s hp run data get storage mob:temp Data.hp
    execute store result score @s hp_max run data get storage mob:temp Data.hp
    execute store result score @s ad run data get storage mob:temp Data.ad
    execute store result score @s xp run data get storage mob:temp Data.xp
# 重複のないようなMobIDの生成
    scoreboard players add World MobID 1
    scoreboard players operation World MobID %= #512 Constant
    scoreboard players operation @s MobID = World MobID
    scoreboard players operation $IDtoTag MobID = World MobID
# MobID → タグに変換
    execute if score $IDtoTag MobID matches 256.. run tag @s add MobID8.1
    execute unless score $IDtoTag MobID matches 256.. run tag @s add MobID8.0
    execute if score $IDtoTag MobID matches 256.. run scoreboard players remove $IDtoTag MobID 256
    execute if score $IDtoTag MobID matches 128.. run tag @s add MobID7.1
    execute unless score $IDtoTag MobID matches 128.. run tag @s add MobID7.0
    execute if score $IDtoTag MobID matches 128.. run scoreboard players remove $IDtoTag MobID 128
    execute if score $IDtoTag MobID matches 64.. run tag @s add MobID6.1
    execute unless score $IDtoTag MobID matches 64.. run tag @s add MobID6.0
    execute if score $IDtoTag MobID matches 64.. run scoreboard players remove $IDtoTag MobID 64
    execute if score $IDtoTag MobID matches 32.. run tag @s add MobID5.1
    execute unless score $IDtoTag MobID matches 32.. run tag @s add MobID5.0
    execute if score $IDtoTag MobID matches 32.. run scoreboard players remove $IDtoTag MobID 32
    execute if score $IDtoTag MobID matches 16.. run tag @s add MobID4.1
    execute unless score $IDtoTag MobID matches 16.. run tag @s add MobID4.0
    execute if score $IDtoTag MobID matches 16.. run scoreboard players remove $IDtoTag MobID 16
    execute if score $IDtoTag MobID matches 8.. run tag @s add MobID3.1
    execute unless score $IDtoTag MobID matches 8.. run tag @s add MobID3.0
    execute if score $IDtoTag MobID matches 8.. run scoreboard players remove $IDtoTag MobID 8
    execute if score $IDtoTag MobID matches 4.. run tag @s add MobID2.1
    execute unless score $IDtoTag MobID matches 4.. run tag @s add MobID2.0
    execute if score $IDtoTag MobID matches 4.. run scoreboard players remove $IDtoTag MobID 4
    execute if score $IDtoTag MobID matches 2.. run tag @s add MobID1.1
    execute unless score $IDtoTag MobID matches 2.. run tag @s add MobID1.0
    execute if score $IDtoTag MobID matches 2.. run scoreboard players remove $IDtoTag MobID 2
    execute if score $IDtoTag MobID matches 1.. run tag @s add MobID0.1
    execute unless score $IDtoTag MobID matches 1.. run tag @s add MobID0.0
    execute if score $IDtoTag MobID matches 1.. run scoreboard players remove $IDtoTag MobID 1
# リセット
    data remove storage mob:temp Data
    scoreboard players reset $IDtoTag
    tag @s remove MobInit