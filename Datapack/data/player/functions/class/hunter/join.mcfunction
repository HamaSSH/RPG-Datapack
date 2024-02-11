#> player:class/hunter/join
# teamに所属する

team leave @s
tag @s remove ClassLectern
scoreboard players reset @s ChangeClass

# 周知する
    execute unless predicate player:class/is_hunter run tellraw @a [{"selector":"@s"},{"text":"が"},{"text":"【ハンター】","color":"#A6ED8F"},{"text":"Lv.","color":"gray"},{"score":{"name":"@s","objective":"HunterLVL"},"bold":true},{"text":" に転職しました ！\n"}]
    execute unless predicate player:class/is_hunter at @s run playsound resource:custom.levelup master @s ~ ~ ~ 0.3 1.0

# team join
    team join Hunter
    execute if score @s HunterRank matches 1 run team join Hunter1
    execute if score @s HunterRank matches 2 run team join Hunter2

# ステータスの初期化
    function player:class/hunter/status/init