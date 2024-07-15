#> mob:on_hurt/element/thunder/hit
# 雷チェイン攻撃

tag @s remove ChainTarget
tag @s add ChainedTarget

# 演出
    playsound entity.shulker.shoot master @a ~ ~ ~ 0.1 1.8
    playsound block.pumpkin.carve master @a ~ ~ ~ 0.3 1.6
    playsound entity.firework_rocket.twinkle_far master @a ~ ~ ~ 0.1 1.9

# ダメージ設定
    data modify storage lib: Damage.Natural set value "Thunder"
    scoreboard players operation @s DmgReceived = $DmgDealt Temporary
    execute if entity @p[tag=Attacker] run scoreboard players operation @s DmgReceived = @p[tag=Attacker] DmgDealt
    scoreboard players operation @s DmgReceived /= #8 Constant
    scoreboard players add @s DmgReceived 4

# 攻撃したプレイヤーを記録
    scoreboard players operation @s PlayerID = $PlayerID Temporary
    execute if entity @p[tag=Attacker] run scoreboard players operation @s PlayerID = @p[tag=Attacker] PlayerID

# ダメージ処理
    function mob:on_hurt/_
    damage @s 0.0 generic

# リセット
    data remove storage lib: Damage.Natural
    scoreboard players reset @s DmgReceived

# 更にチェインする
    scoreboard players remove $ThunderChainMax Temporary 1
    execute if score $ThunderChainMax Temporary matches 1.. as @n[type=#lib:every_mob,tag=ChainedTarget] at @s run function mob:on_hurt/element/thunder/chain