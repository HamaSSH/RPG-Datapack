#> player:class/hunter/join
# teamに所属する

# ステータスの初期化
    function player:class/leave
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
    tellraw @a [{"selector":"@s"},{"text":"が"},{"text":"【ハンター】","color":"#A9E07D"},{"text":"Lv.\uF821","color":"#E0E0E0"},{"score":{"name":"@s","objective":"LVL"},"bold":true},{"text":" に転職しました！"}]
    playsound resource:custom.levelup master @s ~ ~ ~ 0.3 1.0

# パッシブスキル(1度きり)
    execute if entity @s[tag=!FirstTimeHunter] run tellraw @s ["",[{"text":"","color":"#BCE19F"}," ▸新ﾊﾟｯｼﾌﾞｽｷﾙ!\uF822《 ",{"text":"適正武器","bold":true},"\uF822I 》"],"\n「弓・短剣の装備時 ステータスが上昇する\n　弓・短剣の溜め攻撃を放つことができるようになる」\n"]
    tag @s add FirstTimeHunter

# リセット
    tag @s remove PlaysoundOnce
    tag @s remove ClassLectern
    scoreboard players reset @s ChangeClass