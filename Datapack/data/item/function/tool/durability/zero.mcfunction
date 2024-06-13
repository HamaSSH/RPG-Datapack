#> item:tool/durability/zero
# 耐久値ゼロ

# ツールを使えないようにする
    data modify block 0 0 0 Items append from entity @s SelectedItem
    item modify block 0 0 0 container.0 [{"function":"set_damage","damage":0},{"function":"set_components","components":{"!minecraft:can_break":{}}}]
    execute if entity @s[tag=MainhandShears] run item replace entity @s weapon.mainhand from block 0 0 0 container.0
    execute if entity @s[tag=OffhandShears] run item replace entity @s weapon.offhand from block 0 0 0 container.0

# 耐久値計算
    function item:tool/durability/_

# 演出
    playsound item.shield.break master @s ~ ~ ~ 0.5 1.0

# リセット
    function player:trigger/using_item/shears/reset
    advancement revoke @s only player:trigger/used_item/durability_zero