#> ui:brewing/init
# UI用エンティティの初期化

tag @s remove UIInit
scoreboard players set @s Timer 3

# プレイヤーUUIDの保存
    data modify entity @s attack.player set from entity @p[advancements={ui:looking_at/brewing=true}] UUID

# UIの初期化
    execute on passengers run function ui:brewing/page/init