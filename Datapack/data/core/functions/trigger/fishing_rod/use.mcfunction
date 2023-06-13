#> core:trigger/fishing_rod/use
# 釣り竿を振るトリガー

# PlayerIDの付与
    execute anchored eyes positioned ^ ^ ^ run scoreboard players operation @e[type=fishing_bobber,distance=..0.5] PlayerID = @s PlayerID
# リセット
    scoreboard players reset @s UsedFishingRod