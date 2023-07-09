#> combat:player_attacked/detected
# プレイヤー(@p[tag=Attacker])から敵モブ(@s)への攻撃処理

# 被ダメージ(補正無し)を設定
    execute as @p[tag=Attacker] run function combat:player_attacked/dmg_dealt
    scoreboard players operation @s DmgReceived = @p[tag=Attacker] DmgDealt
    execute unless score @s DmgReceived = @p[tag=Attacker] STR run data modify storage lib: Damage.Type set value "Critical"

# 被ダメージ時のトリガー
    execute store result storage asset:mob ID int 1 run scoreboard players get @s MobID
    execute at @s run function #asset:mob/hurt

# ダメージ処理
    # 防御＋ダメージブレ補正
        function mob:status/def/dmg_reduction
        function lib:damage/blur
    execute at @s run function lib:damage/received

# HP表示
    function mob:status/hp/display/_
    scoreboard players set @s InCombat 100
    tag @s add InCombat

# 無敵時間
    scoreboard players set @s HurtTime 10
    tag @s add HurtTime

# 攻撃したプレイヤーを記録
    scoreboard players operation @s PlayerID = @p[tag=Attacker] PlayerID


# #TODO: 属性攻撃
    # execute if score @p[tag=Attacker] FireAttack matches 1.. run function mob:on_hurt/element/fire
    # execute if score @p[tag=Attacker] WaterAttack matches 1.. run function mob:on_hurt/element/water
    # execute if score @p[tag=Attacker] ThunderAttack matches 1.. run function mob:on_hurt/element/thunder
    # execute if score @p[tag=Attacker] EarthAttack matches 1.. run function mob:on_hurt/element/earth
    # execute if score @p[tag=Attacker] WindAttack matches 1.. run function mob:on_hurt/element/wind

# TODO: 死亡処理
    execute if score @s HP matches ..0 run function mob:manager/on_death/_

# リセット
    scoreboard players reset @s DmgReceived
    data remove storage lib: Damage.Type
    data remove storage asset:mob ID