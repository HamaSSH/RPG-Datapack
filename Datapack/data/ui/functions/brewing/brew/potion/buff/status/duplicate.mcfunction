#> ui:brewing/brew/potion/buff/status/duplicate
# ステータスバフがダブったら効果を強化

# ポーションのバフ
    $execute store result score $Amplifier Temporary run data get storage ui: PotionData.Buff[{Status:"$(Status)"}].Amplifier
    $execute store result score $Duration Temporary run data get storage ui: PotionData.Buff[{Status:"$(Status)"}].Duration
    execute store result score $AddAmplifier Temporary run data get storage ui: Ingredient.Buff[0].Amplifier 0.7
    execute store result score $AddDuration Temporary run data get storage ui: Ingredient.Buff[0].Duration 0.7
    scoreboard players operation $Amplifier Temporary += $AddAmplifier Temporary
    scoreboard players operation $Duration Temporary += $AddDuration Temporary

# バフ情報の補正 (効果1.3倍、時間1.2倍)
    scoreboard players operation $Amplifier Temporary *= #13 Constant
    scoreboard players operation $Amplifier Temporary /= #10 Constant
    scoreboard players operation $Duration Temporary *= #12 Constant
    scoreboard players operation $Duration Temporary /= #10 Constant

# バフ情報を更新
    scoreboard players operation $Duration Temporary /= #20 Constant
    # scoreboard players operation $DurationSec Temporary = $Duration Temporary
    # scoreboard players operation $DurationSec Temporary %= #60 Constant
    # execute if score $Duration Temporary matches 60.. run scoreboard players operation $DurationMin Temporary = $Duration Temporary
    # execute if score $Duration Temporary matches 60.. run scoreboard players operation $DurationMin Temporary /= #60 Constant
    scoreboard players operation $Duration Temporary *= #20 Constant
    $execute store result storage ui: PotionData.Buff[{Status:"$(Status)"}].Amplifier int 1 run scoreboard players get $Amplifier Temporary
    $execute store result storage ui: PotionData.Buff[{Status:"$(Status)"}].Duration int 1 run scoreboard players get $Duration Temporary

# # Loreの流用先を指定
#     execute store result storage ui: Ingredient.Buff[0].Lore.Citation int -1 run scoreboard players add $StatusCitation Temporary 2

# # Loreの設定
#     data remove storage ui: PotionData.StatusLore[0]
#     data modify storage ui: Ingredient.SingleBuff set from storage ui: Ingredient.Buff[0]
#     function ui:brewing/brew/potion/buff/status/shaping with storage ui: Ingredient.Buff[0].Lore
#     function ui:brewing/brew/potion/buff/status/lore with storage ui: Ingredient.Buff[0].Lore
#     data remove storage ui: Ingredient.SingleBuff
#     data remove storage ui: Ingredient.Buff.Lore

# リセット
    scoreboard players reset $Amplifier Temporary
    scoreboard players reset $Duration Temporary
    scoreboard players reset $AddAmplifier Temporary
    scoreboard players reset $AddDuration Temporary
    # scoreboard players reset $DurationSec Temporary
    # scoreboard players reset $DurationMin Temporary