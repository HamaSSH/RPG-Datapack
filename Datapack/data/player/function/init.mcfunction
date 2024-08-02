#> player:init
# プレイヤーが最初にワールドに入った時の処理

# プレイヤーIDの付与＋UUIDの保存
    scoreboard players add World PlayerID 1
    scoreboard players operation @s PlayerID = World PlayerID
    execute store result score @s UUID run data get entity @s UUID[0]

# (初期)スポーン地点の設定
    execute in overworld positioned as 83a-51-1-0-2 run tp @s ~ ~ ~ -90 0
    execute in overworld positioned as 83a-51-1-0-2 run spawnpoint @s ~ ~ ~ -90

# 利き手の設定
    tag @s add RightHanded

# 初期ステータス
    team leave @s
    attribute @s minecraft:generic.attack_speed base set 3.0
    function player:status/init

# TIPSの初期化
    function asset:tips/reset

# 実績の初期化
    function asset:achievement/init
    advancement grant @s only asset:achievement/1.1