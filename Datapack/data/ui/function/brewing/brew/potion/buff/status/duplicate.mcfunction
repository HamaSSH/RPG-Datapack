#> ui:brewing/brew/potion/buff/status/duplicate
# ステータスバフがダブったら効果を強化

# ポーションのバフ
    $execute store result score $Amplifier Temporary run data get storage ui: PotionData.buff[{status:"$(status)"}].amplifier
    $execute store result score $Duration Temporary run data get storage ui: PotionData.buff[{status:"$(status)"}].duration
    execute store result score $AddAmplifier Temporary run data get storage ui: Ingredient.buff[0].amplifier 0.7
    execute store result score $AddDuration Temporary run data get storage ui: Ingredient.buff[0].duration 0.7
    scoreboard players operation $Amplifier Temporary += $AddAmplifier Temporary
    scoreboard players operation $Duration Temporary += $AddDuration Temporary

# バフ情報の補正 (効果1.3倍、時間1.2倍)
    scoreboard players operation $Amplifier Temporary *= #13 Constant
    scoreboard players operation $Amplifier Temporary /= #10 Constant
    scoreboard players operation $Duration Temporary *= #12 Constant
    scoreboard players operation $Duration Temporary /= #10 Constant

# バフ情報を更新
    scoreboard players operation $Duration Temporary /= #20 Constant
    scoreboard players operation $Duration Temporary *= #20 Constant
    $execute store result storage ui: PotionData.buff[{status:"$(status)"}].amplifier int 1 run scoreboard players get $Amplifier Temporary
    $execute store result storage ui: PotionData.buff[{status:"$(status)"}].duration int 1 run scoreboard players get $Duration Temporary

# リセット
    scoreboard players reset $Amplifier Temporary
    scoreboard players reset $Duration Temporary
    scoreboard players reset $AddAmplifier Temporary
    scoreboard players reset $AddDuration Temporary