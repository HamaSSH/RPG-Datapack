#> mob:trigger/on_death/drop/exp/blur
# 経験値ドロップ量のブレ（10経験値ごとに+1）

# ブレ幅の決定
    scoreboard players operation $EXPBlurWidth Temporary = $EXPDrop Temporary
    scoreboard players add $EXPBlurWidth Temporary 8
    scoreboard players operation $EXPBlurWidth Temporary /= #10 Constant
    scoreboard players operation $EXPBlurWidth Temporary *= #2 Constant
    scoreboard players add $EXPBlurWidth Temporary 1

# 0~2*floor((EXP+8)/10)+1の乱数を生成
    execute store result score $EXPBlur Temporary run random value 0..65534
    scoreboard players operation $EXPBlur Temporary %= $EXPBlurWidth Temporary

# －と＋側にブレを生成
    scoreboard players remove $EXPBlurWidth Temporary 1
    scoreboard players operation $EXPBlurWidth Temporary /= #2 Constant
    scoreboard players operation $EXPBlur Temporary -= $EXPBlurWidth Temporary
    scoreboard players operation $EXPDrop Temporary += $EXPBlur Temporary
    execute if score $EXPDrop Temporary matches ..0 run scoreboard players set $EXPDrop Temporary 0

# リセット
    scoreboard players reset $EXPBlurWidth Temporary
    scoreboard players reset $EXPBlur Temporary
