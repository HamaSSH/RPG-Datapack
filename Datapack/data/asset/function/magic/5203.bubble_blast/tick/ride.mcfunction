#> asset:magic/5203.bubble_blast/tick/ride
# バブルに乗せる

# ダメージ設定
    data modify storage lib: Damage.Type set value "Magic"
    scoreboard players operation @s DmgReceived = $DmgDealt Temporary

# 攻撃したプレイヤーを記録
    scoreboard players operation @s PlayerID = $PlayerID Temporary

# ダメージ処理
    function mob:on_hurt/_
    damage @s 0.0 generic

# バブルに乗せる
    ride @s mount @e[type=text_display,tag=Attacker,limit=1,sort=nearest]
    execute if predicate lib:has_vehicle run tag @s add Bubbled

# リセット
    data remove storage lib: Damage.Type
    scoreboard players reset @s DmgReceived
    tag @s remove Hit