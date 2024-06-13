#> player:combat/main/bow/skill/meteor/meteorite/summon
# ため攻撃隕石矢の召喚

data modify entity @s pickup set value 0b
data modify entity @s SoundEvent set value "entity.player.attack.crit"
tag @s add AutoKill
tag @s add Flying
tag @s add ArrowInit
tag @s add MeteoriteArrow

# プレイヤーID＋ダメージ
    scoreboard players operation @s PlayerID = $PlayerID Temporary
    scoreboard players operation @s DmgDealt = $DmgDealt Temporary

# ランダムな方向へばらけさせる
    execute store result entity @s Motion[0] double 0.005 run random value -50..50
    execute store result entity @s Motion[1] double 0.01 run random value -50..0
    execute store result entity @s Motion[2] double 0.005 run random value -50..50

# 属性纏い中
    execute if entity @e[type=arrow,tag=MeteorArrow,tag=ElementFire,limit=1] run data modify entity @s Fire set value 2000s
    execute if entity @e[type=arrow,tag=MeteorArrow,tag=ElementFire,limit=1] run tag @s add ElementFire
    execute if entity @e[type=arrow,tag=MeteorArrow,tag=ElementWater,limit=1] run tag @s add ElementWater
    execute if entity @e[type=arrow,tag=MeteorArrow,tag=ElementThunder,limit=1] run tag @s add ElementThunder
    execute if entity @e[type=arrow,tag=MeteorArrow,tag=ElementEarth,limit=1] run tag @s add ElementEarth
    execute if entity @e[type=arrow,tag=MeteorArrow,tag=ElementWind,limit=1] run tag @s add ElementWind