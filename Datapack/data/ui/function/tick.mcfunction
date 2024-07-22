#> ui:tick
# UI操作周りのtick処理

# UI視点検知用のロバのteamを設定
    execute as @e[type=mule,tag=UIMule] if entity @s[team=!NoCollision] run team join NoCollision @s

# プレイヤーに結びついた、操作中のUIをプレイヤーの座標に移動
    execute at @a[tag=UsingUI] as @e[type=interaction,tag=UIInteraction,distance=..4.5] if score @s PlayerID = @p PlayerID run tp @s @p

# ホバードロップ(Q)キー対策
    execute at @a[tag=UsingUI] positioned ~ ~1.32 ~ as @e[type=item,distance=..0.01] if data entity @s Item{id:"minecraft:glass_bottle"} run kill @s
    execute at @a[tag=UsingUI] positioned ~ ~1.32 ~ as @e[type=item,distance=..0.01] if data entity @s Item.components.minecraft:custom_data.ui{item_type:"blank"} run kill @s
    execute at @a[tag=UsingUI] positioned ~ ~1.32 ~ as @e[type=item,distance=..0.01] if data entity @s Item.components.minecraft:custom_data.ui{item_type:"goods"} run kill @s

# メニューごとのtick処理
    execute at @a[tag=UsingUI] as @e[type=interaction,tag=UIInteraction,distance=..0.01] on passengers on passengers if entity @s[tag=BrewingMarker] run function ui:brewing/tick
    execute at @a[tag=UsingUI] as @e[type=interaction,tag=UIInteraction,distance=..0.01] on passengers on passengers if entity @s[tag=SmithingMarker] run function ui:smithing/tick
    execute at @a[tag=UsingUI] as @e[type=interaction,tag=UIInteraction,distance=..0.01,] on passengers on passengers if entity @s[tag=ShopMarker] run function ui:shop/tick
    execute at @a[tag=UsingUI] as @e[type=interaction,tag=UIInteraction,distance=..0.01] on passengers on passengers if entity @s[tag=ClassMarker] run function ui:class_change/tick