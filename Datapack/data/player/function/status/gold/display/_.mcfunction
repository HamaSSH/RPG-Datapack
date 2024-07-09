#> player:status/gold/display/_
# ゴールド表示用エンティティの召喚

# ゴールド表示
    tag @s add GoldDisplay
    execute anchored eyes positioned ^ ^ ^ run summon text_display ~ ~ ~ {alignment:"left",billboard:"center"}
    execute anchored eyes positioned ^ ^ ^ as @n[type=text_display,distance=..0.01] run function player:status/gold/display/init

# リセット
    scoreboard players reset @s GoldDisplay
    scoreboard players reset @s GoldTimer
    tag @s remove GoldDisplay