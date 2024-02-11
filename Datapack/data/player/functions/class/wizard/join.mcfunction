#> player:class/wizard/join
# teamに所属する

team leave @s
tag @s remove ClassLectern
scoreboard players reset @s ChangeClass

# 周知する
    execute unless predicate player:class/is_wizard run tellraw @a [{"selector":"@s"},{"text":"が"},{"text":"【ウィザード】","color":"#A486DA"},{"text":"Lv.","color":"gray"},{"score":{"name":"@s","objective":"WizardLVL"},"bold":true},{"text":" に転職しました ！\n"}]
    execute unless predicate player:class/is_wizard at @s run playsound resource:custom.levelup master @s ~ ~ ~ 0.3 1.0

# team join
    team join Wizard
    execute if score @s WizardRank matches 1 run team join Wizard1
    execute if score @s WizardRank matches 2 run team join Wizard2

# ステータスの初期化
    function player:class/wizard/status/init