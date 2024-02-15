#> ui:brewing/brew/potion/buff/effect/duplicate
# エフェクトがダブったら効果を強化

# ポーションのバフ
    $execute store result score $Duration Temporary run data get storage ui: PotionData.Buff[{Effect:"$(Effect)"}].Duration
    execute store result score $AddDuration Temporary run data get storage ui: Ingredient.Buff[0].Duration 0.5
    scoreboard players operation $Duration Temporary += $AddDuration Temporary

# バフ情報の補正 (1.1倍)
    scoreboard players operation $Duration Temporary *= #11 Constant
    scoreboard players operation $Duration Temporary /= #10 Constant

# バフ情報を更新
    scoreboard players operation $Duration Temporary /= #20 Constant
    scoreboard players operation $DurationSec Temporary = $Duration Temporary
    scoreboard players operation $DurationSec Temporary %= #60 Constant
    execute if score $Duration Temporary matches 60.. run scoreboard players operation $DurationMin Temporary = $Duration Temporary
    execute if score $Duration Temporary matches 60.. run scoreboard players operation $DurationMin Temporary /= #60 Constant
    scoreboard players operation $Duration Temporary *= #20 Constant
    $execute store result storage ui: PotionData.Buff[{Effect:"$(Effect)"}].Duration int 1 run scoreboard players get $Duration Temporary

# Loreの設定
    $data remove storage ui: PotionData.EffectLore[$(ID)]
    data modify storage ui: Ingredient.SingleBuff set from storage ui: Ingredient.Buff[0]
    function ui:brewing/brew/potion/buff/effect/shaping
    function ui:brewing/brew/potion/buff/effect/lore with storage ui: Ingredient.Buff[0].Lore
    data remove storage ui: Ingredient.SingleBuff

# リセット
    scoreboard players reset $Duration Temporary
    scoreboard players reset $AddDuration Temporary
    scoreboard players reset $DurationSec Temporary
    scoreboard players reset $DurationMin Temporary