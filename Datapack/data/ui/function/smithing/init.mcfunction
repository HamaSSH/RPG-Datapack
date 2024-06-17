#> ui:smithing/init
# UI用エンティティの初期化

tag @s remove UIInit

# プレイヤーUUIDの保存
    data modify entity @s attack.player set from entity @p UUID

# UIの初期化
    execute on passengers run function ui:smithing/page/init