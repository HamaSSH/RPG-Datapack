#> mob:trigger/on_death/drop/exp/_
# EXPドロップ

# LUKで+LUK/4%ブースト
    scoreboard players operation $EXPBoost Temporary = @s LUK
    scoreboard players add $EXPBoost Temporary 400
    execute store result score $EXPDrop Temporary run data get storage mob:temp data.exp
    scoreboard players operation $EXPDrop Temporary *= $EXPBoost Temporary
    scoreboard players operation $EXPDrop Temporary /= #400 Constant

# ブレ
    function mob:trigger/on_death/drop/exp/blur

# 表示
    execute anchored eyes positioned ^ ^ ^ run summon text_display ~ ~ ~ {alignment:"left",billboard:"center"}
    execute anchored eyes positioned ^ ^ ^ as @n[type=text_display,distance=..0.01] run function mob:trigger/on_death/drop/exp/display

# EXP付与
    scoreboard players operation @s EXPGained += $EXPDrop Temporary
    function player:status/lvl/exp/_

# リセット
    scoreboard players reset $EXPBoost Temporary
    scoreboard players reset $EXPDrop Temporary
