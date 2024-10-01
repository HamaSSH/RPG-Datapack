#> player:status/mp/regen
# MPの自然回復処理

# MPを回復
    scoreboard players operation $MPRegen Temporary = @s MPRTimer
    scoreboard players operation $MPRegen Temporary /= #2000 Constant
    scoreboard players operation @s MP += $MPRegen Temporary

# 自然回復タイマーを減算
    scoreboard players operation $MPRegen Temporary *= #2000 Constant
    scoreboard players operation @s MPRTimer -= $MPRegen Temporary

# プレイヤーメニューの更新
    execute if entity @s[tag=MenuStatus] run tag @s add MenuStatusUpdate

# リセット
    scoreboard players reset $MPRegen Temporary