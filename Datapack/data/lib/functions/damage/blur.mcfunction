#> lib:damage/blur
# ダメージブレの設定

# ダメージブレ幅の決定(30ダメージごとにブレ幅+1)
    scoreboard players operation $BlurWidth Temporary = @s DmgReceived
    scoreboard players add $BlurWidth Temporary 25
    scoreboard players operation $BlurWidth Temporary /= #30 Constant
    scoreboard players operation $BlurWidth Temporary *= #2 Constant
    scoreboard players add $BlurWidth Temporary 1

# 0~2*floor((DmgReceived+25)/30)+1の乱数を生成
    execute store result score $DmgBlur Temporary run function lib:rng
    scoreboard players operation $DmgBlur Temporary %= $BlurWidth Temporary

# －と＋側にダメージブレを生成
    scoreboard players remove $BlurWidth Temporary 1
    scoreboard players operation $BlurWidth Temporary /= #2 Constant
    scoreboard players operation $DmgBlur Temporary -= $BlurWidth Temporary
    execute if score @s DmgReceived matches 1.. run scoreboard players operation @s DmgReceived += $DmgBlur Temporary

# リセット
    scoreboard players reset $BlurWidth Temporary
    scoreboard players reset $DmgBlur Temporary