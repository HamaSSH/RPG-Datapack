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
    execute store result score @s LVL run data get storage asset:mob Data.Status.LVL
    execute store result score @s HPMax run data get storage asset:mob Data.Status.HP
    execute store result score @s HP run data get storage asset:mob Data.Status.HP
    execute store result score @s DEF run data get storage asset:mob Data.Status.DEF
    execute store result score @s DmgDealt run data get storage asset:mob Data.Status.Dmg
    execute store result score @s EXP run data get storage asset:mob Data.Status.EXP
    execute store result score @s Gold run data get storage asset:mob Data.Status.Gold
    function mob:summon/set_speed

# 重複のないようなMobUUIDの生成
    scoreboard players add World MobUUID 1
    scoreboard players operation World MobUUID %= #512 Constant
    scoreboard players operation @s MobUUID = World MobUUID
    scoreboard players operation $IDtoTag Temporary = World MobUUID
    # MobUUID → タグに変換
        execute if score $IDtoTag Temporary matches 256.. run tag @s add MobID8.1
        execute unless score $IDtoTag Temporary matches 256.. run tag @s add MobID8.0
        execute if score $IDtoTag Temporary matches 256.. run scoreboard players remove $IDtoTag Temporary 256
        execute if score $IDtoTag Temporary matches 128.. run tag @s add MobID7.1
        execute unless score $IDtoTag Temporary matches 128.. run tag @s add MobID7.0
        execute if score $IDtoTag Temporary matches 128.. run scoreboard players remove $IDtoTag Temporary 128
        execute if score $IDtoTag Temporary matches 64.. run tag @s add MobID6.1
        execute unless score $IDtoTag Temporary matches 64.. run tag @s add MobID6.0
        execute if score $IDtoTag Temporary matches 64.. run scoreboard players remove $IDtoTag Temporary 64
        execute if score $IDtoTag Temporary matches 32.. run tag @s add MobID5.1
        execute unless score $IDtoTag Temporary matches 32.. run tag @s add MobID5.0
        execute if score $IDtoTag Temporary matches 32.. run scoreboard players remove $IDtoTag Temporary 32
        execute if score $IDtoTag Temporary matches 16.. run tag @s add MobID4.1
        execute unless score $IDtoTag Temporary matches 16.. run tag @s add MobID4.0
        execute if score $IDtoTag Temporary matches 16.. run scoreboard players remove $IDtoTag Temporary 16
        execute if score $IDtoTag Temporary matches 8.. run tag @s add MobID3.1
        execute unless score $IDtoTag Temporary matches 8.. run tag @s add MobID3.0
        execute if score $IDtoTag Temporary matches 8.. run scoreboard players remove $IDtoTag Temporary 8
        execute if score $IDtoTag Temporary matches 4.. run tag @s add MobID2.1
        execute unless score $IDtoTag Temporary matches 4.. run tag @s add MobID2.0
        execute if score $IDtoTag Temporary matches 4.. run scoreboard players remove $IDtoTag Temporary 4
        execute if score $IDtoTag Temporary matches 2.. run tag @s add MobID1.1
        execute unless score $IDtoTag Temporary matches 2.. run tag @s add MobID1.0
        execute if score $IDtoTag Temporary matches 2.. run scoreboard players remove $IDtoTag Temporary 2
        execute if score $IDtoTag Temporary matches 1.. run tag @s add MobID0.1
        execute unless score $IDtoTag Temporary matches 1.. run tag @s add MobID0.0
        execute if score $IDtoTag Temporary matches 1.. run scoreboard players remove $IDtoTag Temporary 1

# リセット
    data remove storage asset:mob Data
    data remove storage asset:mob ArmorItems
    data remove storage asset:mob HandItems
    scoreboard players reset $IDtoTag Temporary
    tag @s remove MobInit