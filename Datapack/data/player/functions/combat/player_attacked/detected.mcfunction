#> player:combat/player_attacked/detected
# プレイヤー(@p[tag=Attacker])から敵モブ(@s)への攻撃処理

# 被ダメージ(補正無し)を設定
    scoreboard players operation @s DmgReceived = @p[tag=Attacker] DmgDealt
    execute if entity @p[tag=Attacker,tag=CriticalHit] run data modify storage lib: Damage.Type set value "Critical"

# 攻撃したプレイヤーを記録
    scoreboard players operation @s PlayerID = @p[tag=Attacker] PlayerID

# ダメージを受けた際の処理
    execute at @s run function mob:on_hurt/_

# リセット
    scoreboard players reset @s DmgReceived
    data remove storage lib: Damage.Type