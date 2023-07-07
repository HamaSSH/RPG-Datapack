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
        execute as @p[tag=Victim] run function combat:damage/blur
    scoreboard players operation @p[tag=Victim] HP -= @p[tag=Victim] DmgReceived
    #execute as @p[tag=Victim] at @s run function player:on_hurt/dmg_received

# リセット
    data remove storage asset:mob ID