#> player:combat/main/wand/hit
# 魔法攻撃がヒットした敵に対しての処理

# ダメージ処理
    # 被ダメージ(補正無し)を設定
    data modify storage lib: Damage.Type set value "Magic"
    scoreboard players operation @s DmgReceived = $DmgDealt Temporary
    execute if entity @e[type=area_effect_cloud,tag=WandAEC,tag=Attacker,tag=CriticalHit,distance=..6,limit=1] run data modify storage lib: Damage.Critical set value 1b

# 攻撃したプレイヤーを記録
    scoreboard players operation @s PlayerID = $PlayerID Temporary

# ダメージ処理
    function mob:on_hurt/_
    damage @s 0.0 generic
    effect give @s slowness 1 0 true

# リセット
    data remove storage lib: Damage
    scoreboard players reset @s DmgReceived
    tag @s remove Hit