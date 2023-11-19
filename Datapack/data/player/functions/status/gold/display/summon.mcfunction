#> player:status/gold/display/summon
# ゴールド表示用エンティティの召喚

# ゴールド表示
    tag @s add GoldDisplay
    execute anchored eyes positioned ^ ^ ^ summon text_display run function player:status/gold/display/_

# リセット
    scoreboard players reset @s GoldDisplay
    scoreboard players reset @s GoldTimer
    tag @s remove GoldDisplay