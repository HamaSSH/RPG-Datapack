#> player:class/fighter/join
# teamに所属する

team leave @s

# ステータスの初期化
    function player:class/fighter/status/init
    tag @s add StatusUpdate
    tag @s add HPFull
    tag @s add MPFull

# team join
    team join Fighter
    execute if score @s FighterRank matches 1 run team join Fighter1
    execute if score @s FighterRank matches 2 run team join Fighter2

# レベルを戻す
    tag @s add ChangedClass
    scoreboard players operation @s EXP = @s FighterEXP
    execute if score @s EXP >= @s NextEXP run function player:status/lvl/up/_
    tag @s remove ChangedClass

# 周知する
    tellraw @a [{"selector":"@s"},{"text":"が"},{"text":"【ファイター】","color":"#E7AC72"},{"text":"Lv.","color":"gray"},{"score":{"name":"@s","objective":"LVL"},"bold":true},{"text":" に転職しました ！\n"}]
    playsound resource:custom.levelup master @s ~ ~ ~ 0.3 1.0

# リセット
    tag @s remove ClassLectern
    scoreboard players reset @s ChangeClass