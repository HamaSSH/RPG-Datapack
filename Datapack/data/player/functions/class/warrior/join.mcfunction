#> player:class/warrior/join
# teamに所属する

team leave @s

# ステータスの初期化
    function player:class/warrior/status/init

# team join
    team join Warrior
    execute if score @s WarriorRank matches 1 run team join Warrior1
    execute if score @s WarriorRank matches 2 run team join Warrior2

# レベルを戻す
    tag @s add ChangedClass
    scoreboard players operation @s EXP = @s WarriorEXP
    execute if score @s EXP >= @s NextEXP run function player:status/lvl/up/_
    tag @s remove ChangedClass

# 周知する
    tellraw @a [{"selector":"@s"},{"text":"が"},{"text":"【ウォリアー】","color":"#9BAFEB"},{"text":"Lv.","color":"gray"},{"score":{"name":"@s","objective":"LVL"},"bold":true},{"text":" に転職しました ！\n"}]
    playsound resource:custom.levelup master @s ~ ~ ~ 0.3 1.0

# リセット
    tag @s remove ClassLectern
    scoreboard players reset @s ChangeClass