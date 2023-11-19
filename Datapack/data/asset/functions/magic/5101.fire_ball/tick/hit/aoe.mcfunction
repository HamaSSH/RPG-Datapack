#> asset:magic/5101.fire_ball/tick/hit/aoe
# 範囲攻撃

# 被ダメージを設定
    scoreboard players operation @s DmgReceived = $DmgDealt Temporary

# 攻撃したプレイヤーを記録
    scoreboard players operation @s PlayerID = $PlayerID Temporary

# ダメージ処理
    execute rotated ~ 60 run function lib:motion/knockback
    function mob:on_hurt/_
    damage @s 0.0 generic
    data modify entity @s Fire set value 30s

# リセット
    tag @s remove Hit
    scoreboard players reset @s DmgReceived