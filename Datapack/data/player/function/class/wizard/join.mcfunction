#> player:class/wizard/join
# teamに所属する

team leave @s

# ステータスの初期化
    function player:class/wizard/status/init
    tag @s add StatusUpdate
    tag @s add HPFull
    tag @s add MPFull

# team join
    team join Wizard
    execute if score @s WizardRank matches 1 run team join Wizard1
    execute if score @s WizardRank matches 2 run team join Wizard2

# レベルを戻す
    tag @s add ChangedClass
    scoreboard players set @s WizardLVL 1
    scoreboard players operation @s EXP = @s WizardEXP
    execute if score @s EXP >= @s NextEXP run function player:status/lvl/up/_
    tag @s remove ChangedClass

# 周知する
    tellraw @a [{"selector":"@s"},{"text":"が"},{"text":"【ウィザード】","color":"#A486DA"},{"text":"Lv.","color":"gray"},{"score":{"name":"@s","objective":"LVL"},"bold":true},{"text":" に転職しました ！"}]
    playsound resource:custom.levelup master @s ~ ~ ~ 0.3 1.0

# リセット
    tag @s remove PlaysoundOnce
    tag @s remove ClassLectern
    scoreboard players reset @s ChangeClass