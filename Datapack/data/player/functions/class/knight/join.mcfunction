#> player:class/knight/join
# teamに所属する

team leave @s

# 周知する
    execute unless predicate player:class/is_knight run tellraw @a [{"selector":"@s"},{"text":"が"},{"text":"【ナイト】","color":"#81DDE1"},{"text":"Lv.","color":"gray"},{"score":{"name":"@s","objective":"KnightLVL"},"bold":true},{"text":" に転職しました ！"}]
    execute unless predicate player:class/is_knight at @s run playsound resource:custom.levelup master @s ~ ~ ~ 0.3 1.0

# team join
    team join Knight
    execute if score @s KnightRank matches 1 run team join Knight1
    execute if score @s KnightRank matches 2 run team join Knight2

# ステータスの初期化
    function player:class/knight/status/init