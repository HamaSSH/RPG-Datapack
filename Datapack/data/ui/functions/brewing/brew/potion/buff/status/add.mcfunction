#> ui:brewing/brew/potion/buff/status/add
# ポーションのステータスバフを追加

# ポーションのバフ
    $execute store result score $Amplifier Temporary run data get storage ui: PotionData.Buff[{Status:"$(Status)"}].Amplifier
    $execute store result score $Duration Temporary run data get storage ui: PotionData.Buff[{Status:"$(Status)"}].Duration

# 持続時間情報
    scoreboard players operation $Duration Temporary /= #20 Constant
    scoreboard players operation $DurationSec Temporary = $Duration Temporary
    scoreboard players operation $DurationSec Temporary %= #60 Constant
    execute if score $Duration Temporary matches 60.. run scoreboard players operation $DurationMin Temporary = $Duration Temporary
    execute if score $Duration Temporary matches 60.. run scoreboard players operation $DurationMin Temporary /= #60 Constant
    scoreboard players operation $Duration Temporary *= #20 Constant

# Loreの流用先を指定
    execute store result storage ui: Ingredient.Buff[0].Lore.Citation int -1 run scoreboard players add $StatusCitation Temporary 2

# Loreの設定
    data modify storage ui: Ingredient.SingleBuff set from storage ui: Ingredient.Buff[0]
    function ui:brewing/brew/potion/buff/status/shaping with storage ui: Ingredient.Buff[0].Lore
    function ui:brewing/brew/potion/buff/status/lore with storage ui: Ingredient.Buff[0].Lore
    data remove storage ui: Ingredient.SingleBuff
    data remove storage ui: Ingredient.Buff.Lore

# リセット
    scoreboard players reset $Amplifier Temporary
    scoreboard players reset $Duration Temporary
    scoreboard players reset $DurationSec Temporary
    scoreboard players reset $DurationMin Temporary