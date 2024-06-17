#> player:combat/player_hurt/detected
# 敵モブ(@s)からプレイヤー(@p[tag=Victim])への攻撃処理

# 被ダメージ(補正無し)を設定
    data modify storage lib: Damage.Type set value "Melee"
    scoreboard players operation @p[tag=Victim] DmgReceived = @s DmgDealt

# 攻撃時のトリガー
    execute store result storage asset:mob ID int 1 run scoreboard players get @s MobID
    execute at @s run function #asset:mob/attack
    data remove storage asset:mob ID

# ダメージを受けた際の処理
    execute as @p[tag=Victim] at @s run function player:on_hurt/_

# リセット
    data remove storage lib: Damage.Type
    scoreboard players reset @p[tag=Victim] DmgReceived