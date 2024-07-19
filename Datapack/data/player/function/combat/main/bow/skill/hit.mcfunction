#> player:combat/main/bow/skill/hit
# 攻撃がヒットした敵に対しての処理

# 被ダメージ(補正無し)を設定
    data modify storage lib: Damage.Type set value "Melee"
    scoreboard players operation @s DmgReceived = $DmgDealt Temporary

# 攻撃したプレイヤーを記録
    scoreboard players operation @s PlayerID = $PlayerID Temporary

# 属性纏い攻撃
    execute if entity @e[type=arrow,tag=Attacker,tag=ElementFire,distance=..6,limit=1] run function mob:on_hurt/element/fire
    execute if entity @e[type=arrow,tag=Attacker,tag=ElementWater,distance=..6,limit=1] run function mob:on_hurt/element/water
    execute if entity @e[type=arrow,tag=Attacker,tag=ElementThunder,distance=..6,limit=1] at @s run function mob:on_hurt/element/thunder/_
    execute if entity @e[type=arrow,tag=Attacker,tag=ElementEarth,distance=..6,limit=1] run effect give @s slowness 2 1
    execute if entity @e[type=arrow,tag=Attacker,tag=ElementWind,distance=..6,limit=1] at @s run function mob:on_hurt/element/wind

# ダメージ処理
    function mob:on_hurt/_
    damage @s 0.0 generic

# リセット
    data remove storage lib: Damage.Type
    scoreboard players reset @s DmgReceived
    tag @s remove Hit