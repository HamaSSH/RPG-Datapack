# XPブレと計算
    function mob:on_death/xp/blur
    scoreboard players operation $XPDrop Temporary = @s xp
    scoreboard players operation $XPDrop60 Temporary = $XPDrop Temporary
    scoreboard players operation $XPDrop40 Temporary = $XPDrop Temporary
    scoreboard players operation $XPDrop60 Temporary *= #6 Constant
    scoreboard players add $XPDrop60 Temporary 5
    scoreboard players operation $XPDrop60 Temporary /= #10 Constant
    scoreboard players operation $XPDrop40 Temporary -= $XPDrop60 Temporary
# XP表示
    execute store result storage mob:temp XP int 1 run scoreboard players get @s xp
    execute if entity @s[type=#mob:size/short] positioned ~ ~0.2 ~ run function mob:on_death/xp/display/_
    execute if entity @s[type=#mob:size/medium] positioned ~ ~0.6 ~ run function mob:on_death/xp/display/_
    execute if entity @s[type=#mob:size/human] positioned ~ ~0.7 ~ run function mob:on_death/xp/display/_
    execute if entity @s[type=#mob:size/tall] positioned ~ ~0.8 ~ run function mob:on_death/xp/display/_
# XP分配(最後に攻撃した人100%、その他40%)
    scoreboard players operation $LastAttacked Temporary = @s PlayerID
    execute as @a if score @s PlayerID = $LastAttacked Temporary run scoreboard players operation @s xp_gained += $XPDrop60 Temporary
    execute as @a[distance=..100] run scoreboard players operation @s xp_gained += $XPDrop40 Temporary
# リセット
    data remove storage mob:temp XP
    scoreboard players reset $XPDrop
    scoreboard players reset $LastAttacked
    scoreboard players reset $XPDrop60
    scoreboard players reset $XPDrop40