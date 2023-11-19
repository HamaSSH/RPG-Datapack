#> player:combat/main/wand/hit
# 魔法攻撃がヒットした敵に対しての処理

# ダメージ処理
    # 被ダメージ(補正無し)を設定
    scoreboard players operation @s DmgReceived = $DmgDealt Temporary
    execute if entity @e[type=area_effect_cloud,tag=WandAEC,tag=Attacker,tag=CriticalHit,sort=nearest,limit=1] run data modify storage lib: Damage.Type set value "Critical"

# 攻撃したプレイヤーを記録
    scoreboard players operation @s PlayerID = $PlayerID Temporary

# ダメージ処理
    function mob:on_hurt/_
    damage @s 0.0 generic
    effect give @s slowness 1 0

# リセット
    tag @s remove Hit
    scoreboard players reset @s DmgReceived
    data remove storage lib: Damage.Type