#> mob:on_death/drop/exp/_
# モブ死亡時の経験値ドロップ

# 経験値量ブレの設定
    function mob:on_death/drop/exp/blur

# 経験値の決定
    scoreboard players operation $XPDrop Temporary = @s EXP
    scoreboard players operation $LastAttacker Temporary = @s PlayerID
    execute as @a if score @s PlayerID = $LastAttacker Temporary run function player:status/luk/xp_boost
    execute anchored eyes positioned ^ ^ ^ summon text_display run function mob:on_death/drop/exp/display

# EXPの分配
    scoreboard players operation $XPDrop50 Temporary = $XPDrop Temporary
    scoreboard players operation $XPDrop50 Temporary /= #2 Constant
    execute as @a if score @s PlayerID = $LastAttacker Temporary run scoreboard players operation @s EXPGained += $XPDrop Temporary
    execute as @a[distance=..100] unless score @s PlayerID = $LastAttacker Temporary run scoreboard players operation @s EXPGained += $XPDrop50 Temporary

# リセット
    scoreboard players reset $LastAttacker Temporary
    scoreboard players reset $XPDrop Temporary
    scoreboard players reset $XPDrop50 Temporary