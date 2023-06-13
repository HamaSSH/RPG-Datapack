#> item:fishing/used_fishing_rod
# 釣り竿を使った際の処理

# 耐久値を減らす
    function item:collect/reduce_durability

# 釣った魚に対しての処理
    execute as @e[type=item] at @s if data entity @s Item.tag{Fishing:1b} run function item:fishing/_

# 後処理
    kill @e[type=experience_orb,distance=..1]
    advancement revoke @s only item:fishing/used_fishing_rod