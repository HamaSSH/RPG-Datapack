#> asset:magic/5101.fire_ball/tick/hit/_
# 攻撃がヒットした敵に対しての処理

# ダメージ設定
    data modify storage lib: Damage.Type set value "Magic"
    scoreboard players operation @s DmgReceived = $DmgDealt Temporary

# 攻撃したプレイヤーを記録
    scoreboard players operation @s PlayerID = $PlayerID Temporary

# 炎上させる
    data modify entity @s Fire set value 100s

# ダメージ処理
    scoreboard players set $MotionPower Temporary 80
    execute facing entity @e[type=armor_stand,tag=Magic,tag=Attacker,sort=nearest,limit=1] feet rotated ~180 60 run function lib:motion/knockback
    function mob:on_hurt/_
    damage @s 0.0 generic

# リセット
    data remove storage lib: Damage.Type
    scoreboard players reset @s DmgReceived
    tag @s remove Hit