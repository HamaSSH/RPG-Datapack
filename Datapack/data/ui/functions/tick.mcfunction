#> ui:tick
# UI操作周りのtick処理

# 醸造
    execute at @a[tag=UIOpen] as @e[type=marker,tag=BrewingMarker,distance=..6] at @s run function ui:brewing/tick