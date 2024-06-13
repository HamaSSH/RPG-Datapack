#> item:tool/durability/zero
# 耐久値ゼロ

# ツールを使えないようにする
    data modify block 0 0 0 Items append from entity @s SelectedItem
    item modify block 0 0 0 container.0 [{"function":"minecraft:set_damage","damage":0},{"function":"minecraft:set_components","components":{"!minecraft:can_break":{}}}]
    item replace entity @s weapon.mainhand from block 0 0 0 container.0

# 耐久値計算
    function item:tool/durability/_

# 演出
    playsound item.shield.break master @s ~ ~ ~ 0.7 1.0

# リセット
    advancement revoke @s only player:trigger/used_item/durability_zero