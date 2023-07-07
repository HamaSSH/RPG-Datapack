#> combat:player_attacked/_
# プレイヤーが攻撃したモブを絞り込む

# モブに攻撃したプレイヤーをタグ付け
    tag @s add Attacker

# モブの絞り込み
    execute as @e[type=#lib:every_mob,tag=!HurtTime,distance=..100] run function combat:player_attacked/8

# リセット
    advancement revoke @s only combat:player_attacked
    tag @s remove Attacker