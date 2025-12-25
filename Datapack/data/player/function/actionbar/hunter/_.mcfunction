#> player:actionbar/hunter/_
# 職業がハンターだった場合の処理

# マクロでアイコンを設定
    execute store result storage macro:temp skill_icon.max_arrow int 1 run scoreboard players get @s MaxHArrow
    execute store result storage macro:temp skill_icon.arrow int 1 run scoreboard players get @s HArrow
    function player:actionbar/hunter/arrow.m with storage macro:temp skill_icon