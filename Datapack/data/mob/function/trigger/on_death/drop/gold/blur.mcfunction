#> mob:trigger/on_death/drop/gold/blur
# ゴールドドロップ量のブレ（10ゴールドごとに+1）

# ブレ幅の決定
    scoreboard players operation $GoldBlurWidth Temporary = $GoldDrop Temporary
    scoreboard players add $GoldBlurWidth Temporary 8
    scoreboard players operation $GoldBlurWidth Temporary /= #10 Constant
    scoreboard players operation $GoldBlurWidth Temporary *= #2 Constant
    scoreboard players add $GoldBlurWidth Temporary 1

# 0~2*floor((Gold+8)/10)+1の乱数を生成
    execute store result score $GoldBlur Temporary run random value 0..65534
    scoreboard players operation $GoldBlur Temporary %= $GoldBlurWidth Temporary

# －と＋側にブレを生成
    scoreboard players remove $GoldBlurWidth Temporary 1
    scoreboard players operation $GoldBlurWidth Temporary /= #2 Constant
    scoreboard players operation $GoldBlur Temporary -= $GoldBlurWidth Temporary
    scoreboard players operation $GoldDrop Temporary += $GoldBlur Temporary
    execute if score $GoldDrop Temporary matches ..0 run scoreboard players set $GoldDrop Temporary 0

# リセット
    scoreboard players reset $GoldBlurWidth Temporary
    scoreboard players reset $GoldBlur Temporary
