#> ui:class_change/init
# UI用エンティティの初期化

tag @s remove UIInit

# プレイヤーUUIDの保存
    data modify entity @s attack.player set from entity @p[advancements={ui:looking_at/class_change=true}] UUID

# UIの初期化
    execute on passengers run function ui:class_change/page/init