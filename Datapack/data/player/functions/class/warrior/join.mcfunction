#> player:class/warrior/join
# teamに所属する

team leave @s

# 周知する
    execute unless predicate player:class/is_warrior run tellraw @a [{"selector":"@s"},{"text":"が"},{"text":"【ウォリアー】","color":"#9BAFEB"},{"text":"Lv.","color":"gray"},{"score":{"name":"@s","objective":"WarriorLVL"},"bold":true},{"text":" に転職しました ！"}]
    execute unless predicate player:class/is_warrior at @s run playsound resource:custom.levelup master @s ~ ~ ~ 0.3 1.0

# team join
    team join Warrior
    execute if score @s WarriorRank matches 1 run team join Warrior1
    execute if score @s WarriorRank matches 2 run team join Warrior2

# ステータスの初期化
    function player:class/warrior/status/init