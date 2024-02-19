#> ui:tick
# UI操作周りのtick処理

# プレイヤーに結びついた、操作中のUIをプレイヤーの座標に移動
    execute at @a[tag=UsingUI] as @e[type=interaction,tag=UIInteraction,distance=..4.5] if score @s PlayerID = @p PlayerID run tp @s @p

# メニューごとのtick処理
    execute at @a[tag=UsingUI] as @e[type=interaction,tag=UIInteraction,distance=..0.01,limit=1] on passengers on passengers if entity @s[tag=BrewingMarker] run function ui:brewing/tick
    execute at @a[tag=UsingUI] as @e[type=interaction,tag=UIInteraction,distance=..0.01,limit=1] on passengers on passengers if entity @s[tag=SmithingMarker] run function ui:smithing/tick
    execute at @a[tag=UsingUI] as @e[type=interaction,tag=UIInteraction,distance=..0.01,limit=1] on passengers on passengers if entity @s[tag=ShopMarker] run function ui:shop/tick