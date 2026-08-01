#> mob:trigger/on_hurt
# ダメージを受けた際の処理

# ダメージ量
    # TODO: プレイヤーの攻撃力からDmgReceivedを算出
    execute unless score @s DmgReceived matches -2147483648..2147483647 run scoreboard players set @s DmgReceived 100

# ダメージ処理
    execute if score @s DmgReceived matches 1.. run function mob:status/def/dmg_reduction
    function lib:damage/blur
    function lib:damage/received

# クリティカルヒットの場合のパーティクル
    execute if data storage lib:temp Damage{Critical:1b} run particle electric_spark ~ ~0.1 ~ 0.3 0.3 0.3 0.9 20 force
    execute if data storage lib:temp Damage{Critical:1b} run particle enchanted_hit ~ ~0.1 ~ 0 0 0 0.8 20 force
    execute if data storage lib:temp Damage{Critical:1b} run particle crit ~ ~0.1 ~ 0 0 0 0.7 20 force

# モブ固有のhurt処理
    execute if data entity @s {data:{triggers:["hurt"]}} run data modify storage macro:temp mob.id set from entity @s data.id
    execute if data entity @s {data:{triggers:["hurt"]}} run function mob:macro/hurt.m with storage macro:temp mob

# HP表示の更新
    function mob:status/hp/display/_

# TODO: プレイヤー連携
    # 実績達成チェック
    # HP吸収処理（player:status/hp/drain）
    # MP吸収処理（player:status/mp/drain）

# 死亡処理
    execute if score @s HP matches ..0 if entity @s[tag=!Dead] run function mob:trigger/on_death

# リセット
    tag @a remove Attacker
    data remove storage macro:temp mob
    scoreboard players reset @s DmgReceived
