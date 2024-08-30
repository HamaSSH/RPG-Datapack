#> player:combat/main/dagger/skill/_
# 高速で前方の敵を攻撃する

# モブに攻撃したプレイヤーをタグ付け
    tag @s add Attacker

# 与ダメージ計算
    function player:combat/player_attacked/dmg_dealt
    scoreboard players operation @s DmgDealt /= #10 Constant

# モブの絞り込み
    function player:combat/main/dagger/charged

# リセット
    tag @s remove Attacker
    tag @s remove Charged
    tag @s remove CriticalHit