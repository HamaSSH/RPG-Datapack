#> player:item_data/enchant/reset
# エンチャント効果のリセット

# attributeのリセット
    execute unless data storage player: Enchant[{id:"jump_boost"}] run attribute @s jump_strength modifier remove jump_boost
    execute unless data storage player: Enchant[{id:"jump_boost"}] run attribute @s safe_fall_distance modifier remove jump_boost
    execute unless data storage player: Enchant[{id:"small_scale"}] run attribute @s scale modifier remove small_scale

# タグのリセット
    execute unless data storage player: Enchant[{id:"fire_protection"}] run tag @s remove FireProtEnch
    execute unless data storage player: Enchant[{id:"poison_immune"}] run tag @s remove PoisonImmune

# バフのリセット
    tag @s add BuffOwner
    execute unless data storage player: Enchant[{id:"fire_protection"}] positioned 0.0 1.0 0.0 as @e[type=area_effect_cloud,tag=BuffRoot,distance=..0.01] on passengers if data entity @s data.buff{effect:"fire_resistance"} run function player:buff/manager/remove
    tag @s remove BuffOwner

# 処理が別で実装されているエンチャント
    data remove storage player: Enchant[{id:"bad_sight"}]
    data remove storage player: Enchant[{id:"water_element"}]