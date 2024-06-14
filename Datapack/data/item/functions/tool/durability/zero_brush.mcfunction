#> item:tool/durability/zero_brush
# 耐久値ゼロ

# ツールを使えないようにする
    data modify block 0 0 0 Items append from entity @s SelectedItem
    item modify block 0 0 0 container.0 [{"function":"set_damage","damage":0},{"function":"set_components","components":{"!minecraft:can_break":{},"!minecraft:can_place_on":{}}}]
    execute if entity @s[tag=MainhandShears] run item replace entity @s weapon.mainhand from block 0 0 0 container.0
    execute if entity @s[tag=OffhandShears] run item replace entity @s weapon.offhand from block 0 0 0 container.0

# 演出
    function player:trigger/using_item/shears/reset
    playsound item.shield.break master @s ~ ~ ~ 0.5 1.0