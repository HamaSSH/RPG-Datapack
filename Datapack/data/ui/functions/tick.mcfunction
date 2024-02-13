#> ui:tick
# UI操作周りのtick処理

# プレイヤーに結びついた、操作中のUIをプレイヤーの座標に移動
    execute at @a as @e[type=interaction,tag=UIInteraction] if score @s PlayerID = @p PlayerID run tp @s @p

# 醸造
    execute at @a[tag=UIOpen] as @e[type=marker,tag=BrewingMarker,distance=..0.01] at @s run function ui:brewing/tick