#> item:tool/durability/zero
# 耐久値ゼロ

# ツールを使えないようにする
    data modify block 0 0 0 Items append from entity @s SelectedItem
    execute if items block 0 0 0 container.0 wooden_pickaxe run item modify block 0 0 0 container.0 {"function":"set_components","components":{"!can_break":{}}}
    execute if items block 0 0 0 container.0 brush run item modify block 0 0 0 container.0 {"function":"set_components","components":{"!can_place_on":{}}}
    execute if items block 0 0 0 container.0 fishing_rod run data modify block 0 0 0 Items[0].id set value "carrot_on_a_stick"

# Main/Offhandに置き換え
    execute unless entity @s[tag=OffhandShears] unless entity @s[tag=OffhandRod] run item replace entity @s weapon.mainhand from block 0 0 0 container.0
    execute if entity @s[tag=OffhandShears] run item replace entity @s weapon.offhand from block 0 0 0 container.0
    execute if entity @s[tag=OffhandRod] run item replace entity @s weapon.offhand from block 0 0 0 container.0

# 演出
    function player:trigger/using_item/shears/reset
    playsound item.shield.break master @s ~ ~ ~ 0.5 1.0