#> mob:summon/set_data
# モブデータの適用

# 共通データの設定
    tag @s add Enemy
    attribute @s generic.max_health base set 1024
    data modify entity @s Health set value 1024f
# 装備の設定
    data modify storage asset:mob ArmorItems set value []
    data modify storage asset:mob ArmorItems append from storage asset:mob Data.Feet
    data modify storage asset:mob ArmorItems append from storage asset:mob Data.Legs
    data modify storage asset:mob ArmorItems append from storage asset:mob Data.Chest
    data modify storage asset:mob ArmorItems append from storage asset:mob Data.Head
    data modify storage asset:mob HandItems set value []
    data modify storage asset:mob HandItems append from storage asset:mob Data.Mainhand
    data modify storage asset:mob HandItems append from storage asset:mob Data.Offhand
# 名前と装備の適用
    function mob:summon/set_name
    data modify entity @s ArmorItems set from storage asset:mob ArmorItems
    data modify entity @s HandItems set from storage asset:mob HandItems
# ステータススコア
    execute store result score @s MobID run data get storage asset:mob Data.MobID
    execute store result score @s level run data get storage asset:mob Data.Status.lv
    execute store result score @s hp_max run data get storage asset:mob Data.Status.hp
    execute store result score @s hp run data get storage asset:mob Data.Status.hp
    execute store result score @s ad run data get storage asset:mob Data.Status.ad
    execute store result score @s xp run data get storage asset:mob Data.Status.xp
    function mob:summon/set_speed

# 重複のないようなMobUUIDの生成
    scoreboard players add World MobID 1
    scoreboard players operation World MobID %= #512 Constant
    scoreboard players operation @s MobUUID = World MobID
    scoreboard players operation $IDtoTag MobID = World MobID
# MobUUID → タグに変換
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
    data remove storage asset:mob Data
    data remove storage asset:mob ArmorItems
    data remove storage asset:mob HandItems
    scoreboard players reset $IDtoTag
    tag @s remove MobInit