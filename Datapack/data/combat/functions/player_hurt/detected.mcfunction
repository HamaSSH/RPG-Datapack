#> combat:player_hurt/detected
# 敵モブ(@s)からプレイヤー(@p[tag=Victim])への攻撃処理

# 被ダメージ(補正無し)を設定
    scoreboard players operation @p[tag=Victim] DmgReceived = @s DmgDealt

# 攻撃時のトリガー
    execute store result storage asset:mob ID int 1 run scoreboard players get @s MobID
    execute at @s run function #asset:mob/attack

# ダメージ処理
    # 防御＋ダメージブレ補正
        execute as @p[tag=Victim] run function player:status/def/dmg_reduction
        execute as @p[tag=Victim] run function lib:damage/blur
    execute as @p[tag=Victim] at @s run function lib:damage/received

# リセット
    scoreboard players reset @p[tag=Victim] DmgReceived
    data remove storage asset:mob ID