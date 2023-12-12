#> player:combat/main/bow/arrow/init
# 矢の初期データ設定

data modify entity @s PierceLevel set value 1
data modify entity @s pickup set value 0b
data modify entity @s SoundEvent set value "entity.player.attack.crit"
tag @s add Flying
tag @s add ArrowInit

# プレイヤーID
    scoreboard players operation @s PlayerID = @p[tag=Shooter] PlayerID

# 自動的に消滅させる
    scoreboard players set @s Timer 20
    tag @s add AutoKill

# 属性纏い中
    execute if entity @p[tag=Shooter,tag=ElementFire] run data modify entity @s Fire set value 2000s
    execute if entity @p[tag=Shooter,tag=ElementFire] run tag @s add ElementFire
    execute if entity @p[tag=Shooter,tag=ElementWater] run tag @s add ElementWater
    execute if entity @p[tag=Shooter,tag=ElementThunder] run tag @s add ElementThunder
    execute if entity @p[tag=Shooter,tag=ElementEarth] run tag @s add ElementEarth
    execute if entity @p[tag=Shooter,tag=ElementWind] run tag @s add ElementWind