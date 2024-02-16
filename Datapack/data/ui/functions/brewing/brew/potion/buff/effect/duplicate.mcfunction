#> ui:brewing/brew/potion/buff/effect/duplicate
# エフェクトがダブったら効果を強化

# ポーションのバフ
    $execute store result score $Amplifier Temporary run data get storage ui: PotionData.Buff[{Effect:"$(Effect)"}].Amplifier
    $execute store result score $Duration Temporary run data get storage ui: PotionData.Buff[{Effect:"$(Effect)"}].Duration
    execute store result score $AddAmplifier Temporary run data get storage ui: Ingredient.Buff[0].Amplifier 0.5
    execute store result score $AddDuration Temporary run data get storage ui: Ingredient.Buff[0].Duration 0.5
    scoreboard players operation $Amplifier Temporary += $AddAmplifier Temporary
    scoreboard players operation $Duration Temporary += $AddDuration Temporary

# バフ情報の補正 (効果1.2倍、時間1.2倍)
    scoreboard players operation $Amplifier Temporary *= #11 Constant
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
    $execute store result storage ui: PotionData.Buff[{Effect:"$(Effect)"}].Amplifier int 1 run scoreboard players get $Amplifier Temporary
    $execute store result storage ui: PotionData.Buff[{Effect:"$(Effect)"}].Duration int 1 run scoreboard players get $Duration Temporary

# # Loreの流用先を指定
#     execute if score $EffectCitation Temporary matches 2 run data modify storage ui: Ingredient.Buff[0].Lore.Citation set value 3
#     execute if score $EffectCitation Temporary matches 1 run data modify storage ui: Ingredient.Buff[0].Lore.Citation set value 4

# # Loreの設定
#     $data remove storage ui: PotionData.EffectLore[$(ID)]
#     data modify storage ui: Ingredient.SingleBuff set from storage ui: Ingredient.Buff[0]
#     function ui:brewing/brew/potion/buff/effect/shaping with storage ui: Ingredient.Buff[0].Lore
#     function ui:brewing/brew/potion/buff/effect/lore with storage ui: Ingredient.Buff[0].Lore
#     data remove storage ui: Ingredient.SingleBuff
#     data remove storage ui: Ingredient.Buff.Lore

# リセット
    scoreboard players reset $Duration Temporary
    scoreboard players reset $AddDuration Temporary
    # scoreboard players reset $DurationSec Temporary
    # scoreboard players reset $DurationMin Temporary