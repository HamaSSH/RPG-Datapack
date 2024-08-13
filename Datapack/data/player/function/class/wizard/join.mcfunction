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
    tellraw @a [{"selector":"@s"},{"text":"が"},{"text":"【ウィザード】","color":"#A486DA"},{"text":"Lv.\uF821","color":"#E0E0E0"},{"score":{"name":"@s","objective":"LVL"},"bold":true},{"text":" に転職しました ！"}]
    playsound resource:custom.levelup master @s ~ ~ ~ 0.3 1.0

# パッシブスキル(1度きり)
    execute if entity @s[tag=!FirstTimeWizard] run tellraw @s ["",[{"text":"","color":"#B4A0D9"}," ▸新ﾊﾟｯｼﾌﾞｽｷﾙ!\uF822《 ",{"text":"適正武器","bold":true},"\uF822I 》"],"\n「杖・魔導書の装備時ステータスＵＰ\n　杖の溜め攻撃を撃てるようになる」\n"]
    tag @s add FirstTimeWizard

# リセット
    tag @s remove PlaysoundOnce
    tag @s remove ClassLectern
    scoreboard players reset @s ChangeClass