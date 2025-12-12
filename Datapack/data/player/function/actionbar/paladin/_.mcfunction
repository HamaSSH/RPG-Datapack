#> player:actionbar/paladin/_
# 職業がパラディンだった場合の処理

# マクロでアイコンを設定
    execute store result storage macro:temp skill_icon.max_shield int 1 run scoreboard players get @s MaxPShield
    execute store result storage macro:temp skill_icon.shield int 1 run scoreboard players get @s PShield
    function player:actionbar/paladin/shield with storage macro:temp skill_icon