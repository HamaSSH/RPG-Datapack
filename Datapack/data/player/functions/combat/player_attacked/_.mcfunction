#> player:combat/player_attacked/_
# プレイヤーが攻撃したモブを絞り込む

# モブに攻撃したプレイヤーをタグ付け
    tag @s add Attacker
# 与ダメージ計算
    function player:combat/player_attacked/dmg_dealt

# モブの絞り込み
    execute as @e[type=#lib:every_mob,tag=!HurtTime,distance=..100] run function player:combat/player_attacked/8
    execute if predicate player:hold_weapon/_ run function player:combat/main/_

# リセット
    advancement revoke @s only player:combat/player_attacked
    tag @s remove Attacker
    tag @s remove CriticalHit