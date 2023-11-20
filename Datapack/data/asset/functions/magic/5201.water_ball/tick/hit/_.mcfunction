#> asset:magic/5201.water_ball/tick/hit/_
# 魔法がヒットした時の処理


# ダメージ設定
    data modify storage lib: Damage.Type set value "Magic"
    scoreboard players operation @s DmgReceived = $DmgDealt Temporary

# 攻撃したプレイヤーを記録
    scoreboard players operation @s PlayerID = $PlayerID Temporary

#TODO:弱体化デバフ


# ダメージ処理
    scoreboard players set $MotionPower Temporary 80
    execute rotated ~ 60 run function lib:motion/knockback
    function mob:on_hurt/_
    damage @s 0.0 generic

# リセット
    data remove storage lib: Damage.Type
    scoreboard players reset @s DmgReceived
    tag @s remove Hit