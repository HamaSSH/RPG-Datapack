##########
#>
#

# 「アサシン」に転職
    execute unless entity @s[team=Knight] run tellraw @a [{"selector":"@s"},{"text":"が"},{"text":"【ナイト】","color":"#81DDE1"},{"text":"Lv.","color":"gray"},{"score":{"name":"@s","objective":"KnightLVL"},"bold":true},{"text":" に転職しました ！"}]
    execute unless entity @s[team=Knight] at @s run playsound resource:custom.levelup master @s ~ ~ ~ 0.3 1.0
# 転生
    execute if entity @s[team=Knight] if score @s level matches 50.. run say 転生
    execute if entity @s[team=Knight] if score @s level matches ..49 run say 経験が足りない
# 職業初期化
    function player:class/change
    function player:class/knight/lv1
# team
    team join Knight @s
# XP加算処理
    tag @s add ClassChange
    scoreboard players operation @s xp = @s KnightXP
    execute if score @s xp >= @s xp_next run function player:status/level/up
    tag @s remove ClassChange