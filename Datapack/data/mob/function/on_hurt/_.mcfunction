#> mob:on_hurt/_
# ダメージを受けた際の処理

# ダメージ処理
    # 防御＋ダメージブレ補正 #TODO: 物理防御・魔法防御で分ける
        execute if data storage lib: Damage{Type:"Melee"} if score @s DmgReceived matches 1.. run function mob:status/def/dmg_reduction
        execute if data storage lib: Damage{Type:"Magic"} if score @s DmgReceived matches 1.. run function mob:status/def/dmg_reduction
        function lib:damage/blur
    function lib:damage/received

# 被ダメージ時のトリガー
    execute store result storage asset:mob ID int 1 run scoreboard players get @s MobID
    function #asset:mob/hurt
    data remove storage asset:mob ID

# HP表示の更新
    function mob:status/hp/display/_

# 死亡処理
    execute if score @s HP matches ..0 run function mob:on_death/_