##########
#>
#

# 「アサシン」に転職
    execute unless entity @s[team=Wizard] run tellraw @a [{"selector":"@s"},{"text":"が"},{"text":"【ウィザード】","color":"#A486DA"},{"text":"Lv.","color":"gray"},{"score":{"name":"@s","objective":"WizardLVL"},"bold":true},{"text":" に転職しました ！"}]
    execute unless entity @s[team=Wizard] at @s run playsound resource:custom.levelup master @s ~ ~ ~ 0.3 1.0
# 転生
    execute if entity @s[team=Wizard] if score @s level matches ..49 run say 経験が足りない
    execute if entity @s[team=Wizard] if score @s level matches 50.. run function player:class/wizard/reincarnation
# 職業初期化
    function player:class/change
    function player:class/wizard/lv1
# team
    team join Wizard @s
# XP加算処理
    tag @s add ClassChange
    scoreboard players operation @s xp = @s WizardXP
    execute if score @s xp >= @s xp_next run function player:status/level/up
    tag @s remove ClassChange