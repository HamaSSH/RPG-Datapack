#> mob:on_death/drop/gold/blur
# 経験値量ブレの設定

# 経験値ブレ幅の決定
    scoreboard players operation $BlurWidth Temporary = $GoldDrop Temporary
    scoreboard players add $BlurWidth Temporary 8
    scoreboard players operation $BlurWidth Temporary /= #10 Constant
    scoreboard players operation $BlurWidth Temporary *= #2 Constant
    scoreboard players add $BlurWidth Temporary 1

# 0~2*floor((Gold+8)/10)+1の乱数を生成
    execute store result score $GoldBlur Temporary run random value 0..65534
    scoreboard players operation $GoldBlur Temporary %= $BlurWidth Temporary

# －と＋側に経験値ブレを生成
    scoreboard players remove $BlurWidth Temporary 1
    scoreboard players operation $BlurWidth Temporary /= #2 Constant
    scoreboard players operation $GoldBlur Temporary -= $BlurWidth Temporary
    scoreboard players operation $GoldDrop Temporary += $GoldBlur Temporary

# リセット
    scoreboard players reset $BlurWidth Temporary
    scoreboard players reset $GoldBlur Temporary