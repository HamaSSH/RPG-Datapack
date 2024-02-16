#> player:class/knight/join
# teamに所属する

team leave @s

# ステータスの初期化
    function player:class/knight/status/init
    tag @s add StatusUpdate
    tag @s add HPFull
    tag @s add MPFull

# team join
    team join Knight
    execute if score @s KnightRank matches 1 run team join Knight1
    execute if score @s KnightRank matches 2 run team join Knight2

# レベルを戻す
    tag @s add ChangedClass
    scoreboard players operation @s EXP = @s KnightEXP
    execute if score @s EXP >= @s NextEXP run function player:status/lvl/up/_
    tag @s remove ChangedClass

# 周知する
    tellraw @a [{"selector":"@s"},{"text":"が"},{"text":"【ナイト】","color":"#81DDE1"},{"text":"Lv.","color":"gray"},{"score":{"name":"@s","objective":"LVL"},"bold":true},{"text":" に転職しました ！\n"}]
    playsound resource:custom.levelup master @s ~ ~ ~ 0.3 1.0

# リセット
    tag @s remove ClassLectern
    scoreboard players reset @s ChangeClass