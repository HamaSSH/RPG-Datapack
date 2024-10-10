#> mob:summon/set_data/_
# モブデータの適用

# 共通データの設定
    attribute @s max_health base set 1024
    data modify entity @s Health set value 1024f

# Healthが0にならないよう
    effect give @s regeneration infinite 255 true
    execute if entity @s[type=#lib:undead] run effect give @s instant_damage infinite 0 true

# 名前の適用
    function mob:summon/set_data/name

# 与ダメージの適用
    execute store result score @s DmgDealt run data get storage asset:mob Data.Status.Dmg

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
    scoreboard players reset $IDtoTag Temporary