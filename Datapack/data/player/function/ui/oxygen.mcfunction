#> player:ui/oxygen
# 水中にいる際の処理(酸素ゲージのfont)

# 酸素ゲージの割合を求める
    scoreboard players operation $OxygenRatio Temporary = @s Oxygen
    scoreboard players operation $OxygenRatio Temporary *= #100 Constant
    scoreboard players operation $OxygenRatio Temporary /= @s MaxOxygen

# 割合に応じたフォントを表示
    execute if score $OxygenRatio Temporary matches ..0 run data modify storage player:ui oxygen set value '\uE70A'
    execute if score $OxygenRatio Temporary matches 1 run data modify storage player:ui oxygen set value '\uE709'
    execute if score $OxygenRatio Temporary matches 2..20 run data modify storage player:ui oxygen set value '\uE708'
    execute if score $OxygenRatio Temporary matches 21 run data modify storage player:ui oxygen set value '\uE707'
    execute if score $OxygenRatio Temporary matches 22..40 run data modify storage player:ui oxygen set value '\uE706'
    execute if score $OxygenRatio Temporary matches 41 run data modify storage player:ui oxygen set value '\uE705'
    execute if score $OxygenRatio Temporary matches 42..60 run data modify storage player:ui oxygen set value '\uE704'
    execute if score $OxygenRatio Temporary matches 61 run data modify storage player:ui oxygen set value '\uE703'
    execute if score $OxygenRatio Temporary matches 62..80 run data modify storage player:ui oxygen set value '\uE702'
    execute if score $OxygenRatio Temporary matches 81 run data modify storage player:ui oxygen set value '\uE701'
    execute if score $OxygenRatio Temporary matches 82..100 run data modify storage player:ui oxygen set value '\uE700'

# リセット
    scoreboard players reset $OxygenRatio Temporary