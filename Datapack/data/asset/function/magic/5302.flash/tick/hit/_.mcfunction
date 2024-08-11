#> asset:magic/5302.flash/tick/hit/_
# 魔法がヒットした時の処理

# 複数ヒット防止
    tag @s add 5302.HurtTime

# ダメージ設定
    data modify storage lib: Damage.Type set value "Magic"
    scoreboard players operation @s DmgReceived = $DmgDealt Temporary

# 攻撃したプレイヤーを記録
    scoreboard players operation @s PlayerID = $PlayerID Temporary

# ダメージ処理
    scoreboard players set $MotionPower Temporary 10
    execute facing entity @e[type=armor_stand,tag=Magic,tag=Attacker,sort=nearest,limit=1] feet rotated ~180 0 run function lib:motion/knockback
    function mob:on_hurt/_
    damage @s 0.0 generic

# リセット
    data remove storage lib: Damage.Type
    scoreboard players reset @s DmgReceived
    tag @s remove Hit