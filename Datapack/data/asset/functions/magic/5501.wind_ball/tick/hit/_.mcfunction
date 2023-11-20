#> asset:magic/5501.wind_ball/tick/hit/_
# 魔法がヒットした時の処理

# ダメージ設定
    data modify storage lib: Damage.Type set value "Magic"
    scoreboard players operation @s DmgReceived = $DmgDealt Temporary

# 攻撃したプレイヤーを記録
    scoreboard players operation @s PlayerID = $PlayerID Temporary

# 上に飛ばす
    data modify entity @s Motion[1] set value 0.8d

# ダメージ処理
    function mob:on_hurt/_
    damage @s 0.0 generic

# リセット
    data remove storage lib: Damage.Type
    scoreboard players reset @s DmgReceived
    tag @s remove Hit