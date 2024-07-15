#> player:class/hunter/join
# teamに所属する

team leave @s

# ステータスの初期化
    function player:class/hunter/status/init
    tag @s add StatusUpdate
    tag @s add HPFull
    tag @s add MPFull

# team join
    team join Hunter
    execute if score @s HunterRank matches 1 run team join Hunter1
    execute if score @s HunterRank matches 2 run team join Hunter2

# レベルを戻す
    tag @s add ChangedClass
    scoreboard players set @s HunterLVL 1
    scoreboard players operation @s EXP = @s HunterEXP
    execute if score @s EXP >= @s NextEXP run function player:status/lvl/up/_
    tag @s remove ChangedClass

# 周知する
    tellraw @a [{"selector":"@s"},{"text":"が"},{"text":"【ハンター】","color":"#E07D80"},{"text":"Lv.","color":"gray"},{"score":{"name":"@s","objective":"LVL"},"bold":true},{"text":" に転職しました ！\n"}]
    playsound resource:custom.levelup master @s ~ ~ ~ 0.3 1.0

# リセット
    tag @s remove PlaysoundOnce
    tag @s remove ClassLectern
    scoreboard players reset @s ChangeClass