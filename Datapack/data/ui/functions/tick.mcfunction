#> ui:tick
# UI操作周りのtick処理

# プレイヤーに結びついた、操作中のUIをプレイヤーの座標に移動
    execute at @a as @e[type=interaction,tag=UIInteraction,distance=..4.5] if score @s PlayerID = @p PlayerID run tp @s @p

# 醸造
    execute at @a[tag=UsingUI] as @e[type=interaction,tag=UIInteraction,distance=..0.01,limit=1] on passengers on passengers run function ui:brewing/tick