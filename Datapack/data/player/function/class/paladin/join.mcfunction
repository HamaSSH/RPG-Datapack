#> player:class/paladin/join
# teamに所属する

team leave @s

# ステータスの初期化
    function player:class/paladin/status/init
    tag @s add StatusUpdate
    tag @s add HPFull
    tag @s add MPFull

# team join
    team join Paladin
    execute if score @s PaladinRank matches 1 run team join Paladin1
    execute if score @s PaladinRank matches 2 run team join Paladin2

# レベルを戻す
    tag @s add ChangedClass
    scoreboard players set @s PaladinLVL 1
    scoreboard players operation @s EXP = @s PaladinEXP
    execute if score @s EXP >= @s NextEXP run function player:status/lvl/up/_
    tag @s remove ChangedClass

# 周知する
    tellraw @a [{"selector":"@s"},{"text":"が"},{"text":"【パラディン】","color":"#81DDE1"},{"text":"Lv.\uF821","color":"#E0E0E0"},{"score":{"name":"@s","objective":"LVL"},"bold":true},{"text":" に転職しました ！"}]
    playsound resource:custom.levelup master @s ~ ~ ~ 0.3 1.0

# リセット
    tag @s remove PlaysoundOnce
    tag @s remove ClassLectern
    scoreboard players reset @s ChangeClass