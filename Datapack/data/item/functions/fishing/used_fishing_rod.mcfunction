#> item:fishing/used_fishing_rod
# 釣り竿を使った際の処理

# 耐久値を減らす
    function item:collect/reduce_durability

# 釣った魚に対しての処理
    execute as @e[type=item] if data entity @s Item.tag{Fishing:1b} at @s run function item:fishing/_

# 釣った際のplaysound（orbを拾う音）
    playsound resource:fishing.done player @a ~ ~ ~ 0.3 1
    kill @e[type=experience_orb,distance=..1]

# リセット
    advancement revoke @s only item:fishing/used_fishing_rod