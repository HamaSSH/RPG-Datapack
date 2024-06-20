#> ui:class_change/init
# UI用エンティティの初期化

tag @s remove UIInit

# プレイヤーUUIDの保存
    data modify entity @s attack.player set from entity @p[advancements={ui:looking_at/class_change=true}] UUID

# UIの初期化
    execute as @p[advancements={ui:looking_at/class_change=true}] run loot replace block 0 0 0 container.0 loot lib:get_mcid
    data modify storage player: MCID set from block 0 0 0 Items[0].components.minecraft:profile.name
    execute on passengers run function ui:class_change/page/init with storage player:
    data remove storage player: MCID