#> player:combat/player_attacked/detected
# プレイヤー(@p[tag=Attacker])から敵モブ(@s)への攻撃処理

# 被ダメージ(補正無し)を設定
    data modify storage lib: Damage.Type set value "Melee"
    scoreboard players operation @s DmgReceived = @p[tag=Attacker] DmgDealt
    execute if entity @p[tag=Attacker,tag=CriticalHit] run data modify storage lib: Damage.Type set value "Critical"
    execute if entity @p[tag=Attacker,tag=CriticalHit] run data modify storage lib: Damage.Critical set value 1b

# 攻撃したプレイヤーを記録
    scoreboard players operation @s PlayerID = @p[tag=Attacker] PlayerID

# ダメージを受けた際の処理
    execute at @s run function mob:on_hurt/_

# リセット
    data remove storage lib: Damage
    scoreboard players reset @s DmgReceived