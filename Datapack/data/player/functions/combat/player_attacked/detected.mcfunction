#> player:combat/player_attacked/detected
# プレイヤー(@p[tag=Attacker])から敵モブ(@s)への攻撃処理

# 被ダメージ(補正無し)を設定
    execute as @p[tag=Attacker] run function player:combat/player_attacked/dmg_dealt
    scoreboard players operation @s DmgReceived = @p[tag=Attacker] DmgDealt
    execute unless score @s DmgReceived = @p[tag=Attacker] STR run data modify storage lib: Damage.Type set value "Critical"

# 攻撃したプレイヤーを記録
    scoreboard players operation @s PlayerID = @p[tag=Attacker] PlayerID

# ダメージを受けた際の処理
    function mob:on_hurt/_

# #TODO: 属性攻撃
    # execute if score @p[tag=Attacker] FireAttack matches 1.. run function mob:on_hurt/element/fire
    # execute if score @p[tag=Attacker] WaterAttack matches 1.. run function mob:on_hurt/element/water
    # execute if score @p[tag=Attacker] ThunderAttack matches 1.. run function mob:on_hurt/element/thunder
    # execute if score @p[tag=Attacker] EarthAttack matches 1.. run function mob:on_hurt/element/earth
    # execute if score @p[tag=Attacker] WindAttack matches 1.. run function mob:on_hurt/element/wind

# リセット
    scoreboard players reset @s DmgReceived
    data remove storage lib: Damage.Type
    data remove storage asset:mob ID