#> player:item_data/enchant/poison_immune
# 毒ダメージを無効化する

# 毒耐性タグ
    tag @s add PoisonImmune

# 既に付与されている毒エフェクトのリセット
    tag @s add BuffOwner
    execute if predicate lib:has_effect/poison run playsound resource:custom.levelup master @s ~ ~ ~ 0.1 1.7
    execute if predicate lib:has_effect/poison run playsound block.amethyst_block.chime master @s ~ ~ ~ 1 1.2
    execute if predicate lib:has_effect/poison run playsound block.amethyst_block.chime master @s ~ ~ ~ 1 1.2
    execute positioned 0.0 1.0 0.0 as @e[type=area_effect_cloud,tag=BuffRoot,distance=..0.01] on passengers if data entity @s data.buff{effect:"poison"} run function player:buff/manager/remove
    tag @s remove BuffOwner

# リセット
    data remove storage player: Enchant[{id:"poison_immune"}]