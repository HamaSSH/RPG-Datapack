#> player:class/rogue/join
# teamに所属する

team leave @s

# ステータスの初期化
    function player:class/rogue/status/init
    tag @s add StatusUpdate
    tag @s add HPFull
    tag @s add MPFull

# team join
    team join Rogue
    execute if score @s RogueRank matches 1 run team join Rogue1
    execute if score @s RogueRank matches 2 run team join Rogue2

# レベルを戻す
    tag @s add ChangedClass
    scoreboard players set @s RogueLVL 1
    scoreboard players operation @s EXP = @s RogueEXP
    execute if score @s EXP >= @s NextEXP run function player:status/lvl/up/_
    tag @s remove ChangedClass

# 周知する
    tellraw @a [{"selector":"@s"},{"text":"が"},{"text":"【ローグ】","color":"#E07D80"},{"text":"Lv.","color":"gray"},{"score":{"name":"@s","objective":"LVL"},"bold":true},{"text":" に転職しました ！\n"}]
    playsound resource:custom.levelup master @s ~ ~ ~ 0.3 1.0

# リセット
    tag @s remove PlaysoundOnce
    tag @s remove ClassLectern
    scoreboard players reset @s ChangeClass