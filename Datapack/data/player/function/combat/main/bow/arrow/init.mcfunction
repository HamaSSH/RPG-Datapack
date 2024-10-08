#> player:combat/main/bow/arrow/init
# 矢の初期データ設定

execute store result entity @s PierceLevel int 1 run scoreboard players get @p[tag=Shooter] PierceLevel
data modify entity @s SoundEvent set value "entity.player.attack.crit"
data modify entity @s pickup set value 0b
data remove entity @s weapon
data remove entity @s item
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
    execute if entity @p[tag=Shooter,predicate=player:is_element/water] run tag @s add ElementWater
    execute if entity @p[tag=Shooter,tag=ElementThunder] run tag @s add ElementThunder
    execute if entity @p[tag=Shooter,tag=ElementEarth] run tag @s add ElementEarth
    execute if entity @p[tag=Shooter,tag=ElementWind] run tag @s add ElementWind