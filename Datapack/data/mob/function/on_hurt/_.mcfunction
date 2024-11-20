#> mob:on_hurt/_
# ダメージを受けた際の処理

# ダメージ処理
    # 防御＋ダメージブレ補正 #TODO:[いつか] 物理防御・魔法防御で分ける
        execute if data storage lib: Damage{Type:"Melee"} if score @s DmgReceived matches 1.. run function mob:status/def/dmg_reduction
        execute if data storage lib: Damage{Type:"Magic"} if score @s DmgReceived matches 1.. run function mob:status/def/dmg_reduction
        function lib:damage/blur
    function lib:damage/received

# 実績達成チェック
    execute if score @s DmgReceived matches 500.. as @p[tag=Attacker] run advancement grant @s only asset:achievement/3.4
    execute if score @s DmgReceived matches 500.. as @a if score @s PlayerID = $PlayerID Temporary run advancement grant @s only asset:achievement/3.4

# 被ダメージ時のトリガー(アセットのhurt処理呼び出し)
    data modify storage asset:mob namespace set from entity @s ArmorItems[3].components.minecraft:custom_data.namespace
    function asset:mob/.manager/hurt with storage asset:mob
    data remove storage asset:mob namespace

# クリティカルヒットの場合のパーティクル
    execute if data storage lib: Damage{Critical:1b} run particle electric_spark ~ ~0.1 ~ 0.3 0.3 0.3 0.9 20 force
    execute if data storage lib: Damage{Critical:1b} run particle enchanted_hit ~ ~0.1 ~ 0 0 0 0.8 20 force
    execute if data storage lib: Damage{Critical:1b} run particle crit ~ ~0.1 ~ 0 0 0 0.7 20 force

# HP表示の更新
    function mob:status/hp/display/_

# HP吸収処理
    scoreboard players operation $MeleeDrain Temporary = @s DmgReceived
    execute if data storage lib: Damage{Type:"Melee"} as @p[tag=Attacker] if score @s HPDrain matches 1.. run function player:status/hp/drain
    scoreboard players reset $MeleeDrain Temporary

# MP吸収処理(ウィザードのマナサージ用)
    execute if data storage lib: Damage{Type:"Magic"} as @a if score @s PlayerID = $PlayerID Temporary if score @s MPDrain matches 1.. run function player:status/mp/drain

# 死亡処理
    execute if score @s HP matches ..0 if entity @s[tag=!Dead] run function mob:on_death/_