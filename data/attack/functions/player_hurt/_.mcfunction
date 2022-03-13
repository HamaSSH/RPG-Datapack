# モブに攻撃したプレイヤーをタグ付け
    tag @s add this
# モブの絞り込み
    execute as @e[type=#mob:mobs,distance=..100] run function attack:player_hurt/8
# リセット
    tag @s remove this
    advancement revoke @s only attack:player_hurt