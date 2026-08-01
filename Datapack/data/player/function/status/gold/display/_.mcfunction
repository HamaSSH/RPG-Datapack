#> player:status/gold/display/_
# ゴールド表示用エンティティの召喚

# 表示用にTemporaryスコアへ退避
    scoreboard players operation $GoldDisplay Temporary = @s GoldDisplay

# 召喚と初期化
    execute anchored eyes positioned ^ ^ ^ run summon text_display ~ ~ ~ {alignment:"left",billboard:"center"}
    execute anchored eyes positioned ^ ^ ^ as @n[type=text_display,distance=..0.01] run function player:status/gold/display/init

# リセット
    scoreboard players reset @s GoldDisplay
    scoreboard players reset @s GoldTimer
    scoreboard players reset $GoldDisplay Temporary
