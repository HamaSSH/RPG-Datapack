#> asset:magic/5401.earth_ball/tick/hit/_
# 魔法がヒットした時の処理

# ダメージ設定
    data modify storage lib: Damage.Type set value "Magic"
    scoreboard players operation @s DmgReceived = $DmgDealt Temporary

# 攻撃したプレイヤーを記録
    scoreboard players operation @s PlayerID = $PlayerID Temporary

# 速度低下デバフ
    data modify storage mob: NewBuff set value [{status:"AGI",duration:50}]
    execute store result storage mob: NewBuff[0].amplifier int -0.5 run scoreboard players get @s AGI
    function mob:buff/_

# ダメージ処理
    scoreboard players set $MotionPower Temporary 80
    execute facing entity @e[type=armor_stand,tag=Magic,tag=Attacker,sort=nearest,limit=1] feet rotated ~180 60 run function lib:motion/knockback
    function mob:on_hurt/_
    damage @s 0.0 generic

# リセット
    data remove storage lib: Damage.Type
    scoreboard players reset @s DmgReceived
    tag @s remove Hit