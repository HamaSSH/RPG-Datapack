#> item:tool/durability/zero
# 耐久値ゼロ

# ツールを使えないようにする
    item replace block 0 0 0 container.0 from entity @s weapon.mainhand
    execute if entity @s[tag=OffhandShears] run item replace block 0 0 0 container.0 from entity @s weapon.offhand
    execute if entity @s[tag=OffhandRod] run item replace block 0 0 0 container.0 from entity @s weapon.offhand
    execute if items block 0 0 0 container.0 carrot_on_a_stick run data modify block 0 0 0 Items[0].components.minecraft:can_break.predicates[0].blocks set value []
    execute if items block 0 0 0 container.0 brush run data modify block 0 0 0 Items[0].components.minecraft:can_place_on.predicates[0].blocks set value []
    execute if items block 0 0 0 container.0 fishing_rod run data modify block 0 0 0 Items[0].id set value "carrot_on_a_stick"

# Main/Offhandに置き換え
    execute unless entity @s[tag=OffhandShears] unless entity @s[tag=OffhandRod] run item replace entity @s weapon.mainhand from block 0 0 0 container.0
    execute if entity @s[tag=OffhandShears] run item replace entity @s weapon.offhand from block 0 0 0 container.0
    execute if entity @s[tag=OffhandRod] run item replace entity @s weapon.offhand from block 0 0 0 container.0

# 演出
    function player:trigger/using_item/shears/reset
    playsound item.shield.break master @s ~ ~ ~ 0.5 1.0