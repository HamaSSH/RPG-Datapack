#> lib:damage/display/init
# ダメージ表示用itemのデータ設定

data merge entity @s {PickupDelay:32767,PortalCooldown:10,CustomNameVisible:1b}
data modify entity @s CustomName set from entity @s Item.tag.display.Name