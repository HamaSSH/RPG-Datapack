#> mob:on_hurt/_
# ダメージを受けた際の処理

# ダメージ処理
    # 防御＋ダメージブレ補正 #TODO:[いつか] 物理防御・魔法防御で分ける
        execute if data storage lib: Damage{Type:"Melee"} if score @s DmgReceived matches 1.. run function mob:status/def/dmg_reduction
        execute if data storage lib: Damage{Type:"Magic"} if score @s DmgReceived matches 1.. run function mob:status/def/dmg_reduction
        function lib:damage/blur
    function lib:damage/received

# 被ダメージ時のトリガー(アセットのhurt処理呼び出し)
    data modify storage asset:mob namespace set from entity @s ArmorItems[3].components.minecraft:custom_data.namespace
    function asset:mob/manager/hurt with storage asset:mob
    data remove storage asset:mob namespace

# クリティカルヒットの場合のパーティクル
    execute if data storage lib: Damage{Critical:1b} run particle electric_spark ~ ~0.1 ~ 0.3 0.3 0.3 0.9 20 force
    execute if data storage lib: Damage{Critical:1b} run particle enchanted_hit ~ ~0.1 ~ 0 0 0 0.8 20 force
    execute if data storage lib: Damage{Critical:1b} run particle crit ~ ~0.1 ~ 0 0 0 0.7 20 force

# HP表示の更新
    function mob:status/hp/display/_

# 死亡処理
    execute if score @s HP matches ..0 run function mob:on_death/_