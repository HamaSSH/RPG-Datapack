#> mob:buff/manager/root/init
# バフ管理マーカーを乗せるAECの初期化

tag @s add BuffRoot
# バフ対象と結びつけ
    scoreboard players operation @s MobUUID = $MobUUID Temporary
    data modify entity @s Owner set from entity @e[type=#lib:every_mob,tag=BuffOwner,limit=1] UUID

# 消滅しないようDurationの設定
    data modify entity @s Duration set value 1000000000