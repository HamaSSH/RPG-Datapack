#> player:class/fighter/join
# teamに所属する

team leave @s
tag @s remove ClassLectern
scoreboard players reset @s ChangeClass

# 周知する
    execute unless predicate player:class/is_fighter run tellraw @a [{"selector":"@s"},{"text":"が"},{"text":"【ファイター】","color":"#E7AC72"},{"text":"Lv.","color":"gray"},{"score":{"name":"@s","objective":"FighterLVL"},"bold":true},{"text":" に転職しました ！\n"}]
    execute unless predicate player:class/is_fighter at @s run playsound resource:custom.levelup master @s ~ ~ ~ 0.3 1.0

# team join
    team join Fighter
    execute if score @s FighterRank matches 1 run team join Fighter1
    execute if score @s FighterRank matches 2 run team join Fighter2

# ステータスの初期化
    function player:class/fighter/status/init