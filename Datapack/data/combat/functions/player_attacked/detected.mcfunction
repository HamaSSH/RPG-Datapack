#> combat:player_attacked/detected
# プレイヤー(@p[tag=Attacker])から敵モブ(@s)への攻撃処理

# 被ダメージ(補正無し)を設定
    scoreboard players operation @p[tag=Attacker] DmgDealt = @p[tag=Attacker] STR
    # execute as @p[tag=Attacker] run function combat:player_attacked/dmg_dealt #TODO: チャージ率ダメージ補正と攻撃に応じてDmgDealtに値を入れるfunction
    scoreboard players operation @s DmgReceived = @p[tag=Attacker] DmgDealt

# ダメージ処理
    # 防御＋ダメージブレ補正
        function mob:status/def/dmg_reduction
        function combat:damage/blur
    # execute if entity @p[tag=Attacker,tag=CriticalHit] run scoreboard players set $DamageColor Temporary 4 #TODO: クリティカル
    scoreboard players operation @s HP -= @s DmgReceived
    # execute at @s run function mob:on_hurt/dmg_received

# 攻撃したプレイヤーを記録
    scoreboard players operation @s PlayerID = @p[tag=Attacker] PlayerID

# 無敵時間
    # tag @s add HurtTime　#TODO: 名前(HPバー)更新
    # scoreboard players set @s HurtTime 10

# #TODO: 属性攻撃
    # execute if score @p[tag=Attacker] FireAttack matches 1.. run function mob:on_hurt/element/fire
    # execute if score @p[tag=Attacker] WaterAttack matches 1.. run function mob:on_hurt/element/water
    # execute if score @p[tag=Attacker] ThunderAttack matches 1.. run function mob:on_hurt/element/thunder
    # execute if score @p[tag=Attacker] EarthAttack matches 1.. run function mob:on_hurt/element/earth
    # execute if score @p[tag=Attacker] WindAttack matches 1.. run function mob:on_hurt/element/wind

# TODO: 死亡処理
    # execute if score @s hp matches ..0 run function mob:on_death/_

# リセット
    scoreboard players reset @s DmgReceived
    # tag @p[tag=Attacker] remove CriticalHit
    # scoreboard players reset $DamageColor