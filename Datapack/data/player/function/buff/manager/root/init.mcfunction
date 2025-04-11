#> player:buff/manager/root/init
# バフ管理マーカーを乗せるAECの初期化

tag @s add BuffRoot
# バフ対象と結びつけ
    scoreboard players operation @s PlayerID = $PlayerID Temporary
    data modify entity @s Owner set from entity @p[tag=BuffOwner] UUID