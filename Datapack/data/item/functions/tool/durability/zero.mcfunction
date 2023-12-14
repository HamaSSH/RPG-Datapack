#> item:tool/durability/zero
# 耐久値ゼロ

# ツールを使えないようにする
    item modify entity @s weapon.mainhand item:tool/durability/zero
    # execute if data storage item: Data{id:"minecraft:fishing_rod"} run function item:fishing/no_durability

# 演出
    playsound item.shield.break master @s ~ ~ ~ 0.7 1.0