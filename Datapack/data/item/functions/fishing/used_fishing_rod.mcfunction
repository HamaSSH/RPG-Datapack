#> item:fishing/used_fishing_rod
# 釣り竿を使った際の処理

# 進捗達成者タグ付け
    # tag @s add UsedFishingRod

# 耐久値を減らす
    function item:collect/reduce_durability

# 釣った魚に対しての処理
    execute as @e[type=item] if data entity @s Item.tag{Fishing:1b} at @s run function item:fishing/_

# レベルが上がらないように
    playsound resource:fishing.done player @a ~ ~ ~ 0.3 1
    kill @e[type=experience_orb,distance=..1]

# リセット
    # tag @s remove UsedFishingRod
    advancement revoke @s only item:fishing/used_fishing_rod