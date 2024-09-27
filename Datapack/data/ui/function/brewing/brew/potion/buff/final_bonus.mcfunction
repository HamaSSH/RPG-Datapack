#> ui:brewing/brew/potion/buff/final_bonus
# 素材アイテムのレアリティに応じて全体的に効果上昇

# バフの1つの情報を取得
    execute store result score $PotionAmplifier Temporary run data get storage ui: PotionData.buff[0].amplifier
    execute store result score $PotionDuration Temporary run data get storage ui: PotionData.buff[0].duration

# 効果UP
    scoreboard players operation $PotionAmplifier Temporary *= $FinalBonus Temporary
    scoreboard players operation $PotionAmplifier Temporary /= #10 Constant
    scoreboard players operation $PotionDuration Temporary *= $FinalBonus Temporary
    scoreboard players operation $PotionDuration Temporary /= #10 Constant

# 新ポーションデータ
    execute if data storage ui: PotionData.buff[0].status store result storage ui: PotionData.buff[0].amplifier int 1 run scoreboard players get $PotionAmplifier Temporary
    execute store result storage ui: PotionData.buff[0].duration int 1 run scoreboard players get $PotionDuration Temporary
    data modify storage ui: NewPotionData.buff append from storage ui: PotionData.buff[0]

# リセット
    scoreboard players reset $PotionAmplifier Temporary
    scoreboard players reset $PotionDuration Temporary

# ポーション全てのバフに対して再帰
    data remove storage ui: PotionData.buff[0]
    execute unless data storage ui: PotionData.buff[] run data remove storage ui: PotionData.buff
    execute if data storage ui: PotionData.buff[] run function ui:brewing/brew/potion/buff/final_bonus