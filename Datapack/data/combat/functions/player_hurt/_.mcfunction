#> combat:player_hurt/_
# プレイヤーに攻撃したモブを絞り込む

# モブに攻撃されたプレイヤーをタグ付け
    tag @s add Victim

# モブの絞り込み
    execute as @e[type=#lib:every_mob,tag=Enemy,distance=..100] run function combat:player_hurt/8

# リセット
    advancement revoke @s only combat:player_hurt
    tag @s remove Victim