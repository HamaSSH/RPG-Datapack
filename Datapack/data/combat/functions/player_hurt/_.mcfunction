##########
#>
#

# モブに攻撃したプレイヤーをタグ付け
    tag @s add this
    tag @s add Victim
# モブの絞り込み
    execute as @e[type=#mob:mobs,distance=..100] run function combat:player_hurt/8
# リセット
    tag @s remove Victim
    tag @s remove this
    advancement revoke @s only combat:player_hurt