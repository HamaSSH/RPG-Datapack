# モブに攻撃したプレイヤーをタグ付け
    tag @s add this
# モブの絞り込み
    execute if predicate combat:mainhand/weapon run function combat:main/_
    execute as @e[type=#mob:mobs,tag=!HurtTime,nbt=!{HurtTime:0s},distance=..100] run function combat:player_attacked/8
    execute if entity @s[advancements={combat:player_attacked={flash=true}}] run function item:asset/1610/left_click
# リセット
    tag @s remove this
    advancement revoke @s only combat:player_attacked