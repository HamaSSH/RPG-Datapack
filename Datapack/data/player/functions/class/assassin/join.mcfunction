#> player:class/assassin/join
# teamに所属する

team leave @s

# 周知する
    execute unless predicate player:class/is_assassin run tellraw @a [{"selector":"@s"},{"text":"が"},{"text":"【アサシン】","color":"#E07D80"},{"text":"Lv.","color":"gray"},{"score":{"name":"@s","objective":"AssassinLVL"},"bold":true},{"text":" に転職しました ！"}]
    execute unless predicate player:class/is_assassin at @s run playsound resource:custom.levelup master @s ~ ~ ~ 0.3 1.0

# team join
    team join Assassin
    execute if score @s AssassinRank matches 1 run team join Assassin1
    execute if score @s AssassinRank matches 2 run team join Assassin2

# ステータスの初期化
    function player:class/assassin/status/init