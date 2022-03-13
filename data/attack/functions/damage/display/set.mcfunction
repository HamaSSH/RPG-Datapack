# ダメージ表示用データのセット
    data modify entity @s PickupDelay set value 32767
    data modify entity @s PortalCooldown set value 10
    data modify entity @s CustomNameVisible set value 1b
    data modify entity @s CustomName set from entity @s Item.tag.display.Name
    tag @s add DmgDisplay