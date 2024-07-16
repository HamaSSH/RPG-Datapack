#> mob:on_death/drop/exp/_
# モブ死亡時の経験値ドロップ

# 経験値量の決定
    scoreboard players operation $EXPDrop Temporary = @s EXP
    execute as @a if score @s PlayerID = $LastAttackerID Temporary run function player:status/luk/exp_boost

# 経験値量ブレの設定
    function mob:on_death/drop/exp/blur

# 経験値量表示
    execute anchored eyes positioned ^ ^ ^ run summon text_display ~ ~ ~ {alignment:"left",billboard:"center"}
    execute anchored eyes positioned ^ ^ ^ as @n[type=text_display] run function mob:on_death/drop/exp/display

# EXPの分配
    scoreboard players operation $EXPDrop50 Temporary = $EXPDrop Temporary
    scoreboard players operation $EXPDrop50 Temporary /= #2 Constant
    execute as @a if score @s PlayerID = $LastAttackerID Temporary run scoreboard players operation @s EXPGained += $EXPDrop Temporary
    execute as @a[distance=..100] unless score @s PlayerID = $LastAttackerID Temporary run scoreboard players operation @s EXPGained += $EXPDrop50 Temporary

# リセット
    scoreboard players reset $EXPDrop Temporary
    scoreboard players reset $EXPDrop50 Temporary