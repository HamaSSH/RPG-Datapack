#> lib:damage/display/init
# ダメージ表示用itemのデータ設定

scoreboard players set @s Timer 10
data merge entity @s {PickupDelay:32767,PortalCooldown:10,CustomNameVisible:1b,Tags:["AutoKill","Timer"]}
data modify entity @s CustomName set from entity @s Item.components.minecraft:custom_name