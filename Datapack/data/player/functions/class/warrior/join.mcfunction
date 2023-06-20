##########
#>
#

# 「アサシン」に転職
    execute unless entity @s[team=Warrior] run tellraw @a [{"selector":"@s"},{"text":"が"},{"text":"【ウォリアー】","color":"#9BAFEB"},{"text":"Lv.","color":"gray"},{"score":{"name":"@s","objective":"WarriorLVL"},"bold":true},{"text":" に転職しました ！"}]
    execute unless entity @s[team=Warrior] at @s run playsound resource:custom.levelup master @s ~ ~ ~ 0.3 1.0
# 転生
    execute if entity @s[team=Warrior] if score @s level matches 50.. run say 転生
    execute if entity @s[team=Warrior] if score @s level matches ..49 run say 経験が足りない
# 職業初期化
    function player:class/change
    function player:class/warrior/lv1
# team
    team join Warrior @s
# XP加算処理
    tag @s add ClassChange
    scoreboard players operation @s xp = @s WarriorXP
    execute if score @s xp >= @s xp_next run function player:status/level/up
    tag @s remove ClassChange