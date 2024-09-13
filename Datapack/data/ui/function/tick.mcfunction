#> ui:tick
# UI操作周りのtick処理

# UI視点検知用のロバのteamを設定
    execute as @e[type=mule,tag=UIMule] at @s run function ui:particle

# プレイヤーに結びついた、操作中のUIをプレイヤーの座標に移動
    execute at @a[tag=UsingUI] as @e[type=interaction,tag=UIInteraction,distance=..4.5] if score @s PlayerID = @p PlayerID run tp @s @p

# メニューごとのtick処理
    execute at @a[tag=UsingUI] as @e[type=interaction,tag=UIInteraction,distance=..0.01] on passengers on passengers if entity @s[tag=CookingMarker] run function ui:cooking/tick
    execute at @a[tag=UsingUI] as @e[type=interaction,tag=UIInteraction,distance=..0.01] on passengers on passengers if entity @s[tag=BrewingMarker] run function ui:brewing/tick
    execute at @a[tag=UsingUI] as @e[type=interaction,tag=UIInteraction,distance=..0.01] on passengers on passengers if entity @s[tag=SmithingMarker] run function ui:smithing/tick
    execute at @a[tag=UsingUI] as @e[type=interaction,tag=UIInteraction,distance=..0.01] on passengers on passengers if entity @s[tag=ShopMarker] run function ui:shop/tick
    execute at @a[tag=UsingUI] as @e[type=interaction,tag=UIInteraction,distance=..0.01] on passengers on passengers if entity @s[tag=ClassMarker] run function ui:class_change/tick
    execute at @a[tag=UsingUI] as @e[type=interaction,tag=UIInteraction,distance=..0.01] on passengers on passengers if entity @s[tag=EnchantingMarker] run function ui:enchanting/tick

# ホバードロップ(Q)キー対策
    execute at @a[tag=UsingUI] positioned ~ ~1.2 ~ as @e[type=item,distance=..1] if data entity @s Item{id:"minecraft:glass_bottle"} run kill @s
    execute at @a[tag=UsingUI] positioned ~ ~1.2 ~ as @e[type=item,distance=..1] if data entity @s Item.components.minecraft:custom_data.ui{item_type:"blank"} run kill @s
    execute at @a[tag=UsingUI] positioned ~ ~1.2 ~ as @e[type=item,distance=..1] if data entity @s Item.components.minecraft:custom_data.ui{item_type:"goods"} run kill @s

# エンダーチェストを開いたことの検知
    execute as @a if score @s OpenEnderchest matches 1.. run function ui:enderchest/open
    execute as @a if entity @s[tag=UsingUI,tag=UsingEnderchest] run function ui:enderchest/tick