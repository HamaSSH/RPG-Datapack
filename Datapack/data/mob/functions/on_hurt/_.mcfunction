#> mob:on_hurt/_
# ダメージを受けた際の処理

# 被ダメージ時のトリガー
    execute store result storage asset:mob ID int 1 run scoreboard players get @s MobID
    execute at @s run function #asset:mob/hurt

# ダメージ処理
    # 防御＋ダメージブレ補正
        function mob:status/def/dmg_reduction
        function lib:damage/blur
    execute at @s run function lib:damage/received

# HP表示の更新
    function mob:status/hp/display/_
    scoreboard players set @s InCombat 100
    tag @s add InCombat

# 無敵時間の設定
    scoreboard players set @s HurtTime 10
    tag @s add HurtTime

# 死亡処理
    execute if score @s HP matches ..0 run function mob:on_death/_