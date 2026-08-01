#> mob:trigger/on_attack
# モブがプレイヤーを攻撃した際の処理

# dataをstorageへ
    data modify storage mob:temp data set from entity @s data

# モブ固有のattack処理
    execute if data storage mob:temp data{triggers:["attack"]} run data modify storage macro:temp mob.id set from storage mob:temp data.id
    execute if data storage mob:temp data{triggers:["attack"]} run function mob:macro/attack.m with storage macro:temp mob

# TODO: プレイヤーへの実ダメージ適用
    # player:trigger/on_hurt

# リセット
    data remove storage mob:temp data
    data remove storage macro:temp mob
