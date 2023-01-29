# PlayerIDの付与
    execute anchored eyes positioned ^ ^ ^0.32 run scoreboard players operation @e[type=fishing_bobber,distance=..1,sort=nearest,limit=1] PlayerID = @s PlayerID
# リセット
    scoreboard players reset @s UsedFishingRod