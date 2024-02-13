#> ui:brewing/init
# UI用エンティティの初期化

tag @s remove UIInit

# 不安定なときがあるためUIは2体召喚
    scoreboard players set @s Timer 2

# プレイヤーUUIDの保存
    data modify entity @s attack.player set from entity @p UUID

# UIの初期化
    execute on passengers run function ui:brewing/page/init