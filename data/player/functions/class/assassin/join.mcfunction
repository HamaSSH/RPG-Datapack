# 「アサシン」に転職
    execute unless entity @s[team=Assassin] run tellraw @a [{"selector":"@s"},{"text":"が"},{"text":"【アサシン】","color":"#E07D80"},{"text":"Lv.","color":"gray"},{"score":{"name":"@s","objective":"lv_assassin"},"bold":true},{"text":" に転職しました ！"}]
    execute unless entity @s[team=Assassin] at @s run playsound resource:custom.levelup master @s ~ ~ ~ 0.3 1.0
# 転生
    execute if entity @s[team=Assassin] if score @s level matches 50.. run say 転生
    execute if entity @s[team=Assassin] if score @s level matches ..49 run say 経験が足りない
# 職業初期化
    function player:class/change
    function player:class/assassin/lv1
# team
    team join Assassin @s
# XP加算処理
    tag @s add ClassChange
    scoreboard players operation @s xp = @s xp_assassin
    execute if score @s xp >= @s xp_next run function player:status/level/up
    tag @s remove ClassChange