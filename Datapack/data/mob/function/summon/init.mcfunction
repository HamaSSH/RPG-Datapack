#> mob:summon/init
# モブの初期化

# dataをstorageへ
    data modify storage mob:temp data set from entity @s data

# ステータススコアの展開
    execute store result score @s HP run data get storage mob:temp data.hp
    execute store result score @s HPMax run data get storage mob:temp data.hp
    execute store result score @s DmgDealt run data get storage mob:temp data.dmg
    execute store result score @s DEF run data get storage mob:temp data.def
    execute store result score @s LVL run data get storage mob:temp data.lvl
    execute store result score @s EXP run data get storage mob:temp data.exp
    execute store result score @s Gold run data get storage mob:temp data.gold

# 一意なMobUUIDの発行
    scoreboard players add World MobUUID 1
    scoreboard players operation World MobUUID %= #512 Constant
    scoreboard players operation @s MobUUID = World MobUUID

# CustomName（HPバー+名前）の表示
    function mob:status/hp/display/_

# モブ固有のsummon処理
    execute if data storage mob:temp data{triggers:["summon"]} run data modify storage macro:temp mob.id set from storage mob:temp data.id
    execute if data storage mob:temp data{triggers:["summon"]} run function mob:macro/summon.m with storage macro:temp mob

# リセット
    data remove storage mob:temp data
    data remove storage macro:temp mob

# MobInitタグのリセット
    tag @s remove MobInit
