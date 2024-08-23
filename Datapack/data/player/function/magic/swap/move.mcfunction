#> player:magic/swap/move
# 魔導書を一つずつずらす

$item replace entity @s hotbar.$(Slot1) from entity @s hotbar.$(Slot2)

# 更にずらす
    data remove storage player:magic hotbar[0]
    data modify storage player:magic swap.Slot1 set from storage player:magic hotbar[0].Slot
    data modify storage player:magic swap.Slot2 set from storage player:magic hotbar[1].Slot
    execute if data storage player:magic hotbar[1] run function player:magic/swap/move with storage player:magic swap