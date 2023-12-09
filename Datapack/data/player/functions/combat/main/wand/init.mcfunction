#> player:combat/main/wand/init
# 杖の弾の初期処理

# 弾と攻撃したプレイヤーの紐づけ
    scoreboard players operation @s PlayerID = @p[tag=Attacker] PlayerID
    scoreboard players operation @s DmgDealt = @p[tag=Attacker] DmgDealt
    execute if entity @p[tag=Attacker,tag=CriticalHit] run tag @s add CriticalHit

# 属性纏い中
    execute if score @p[tag=Attacker] ElementTimer matches 0 run tag @s add Normal
    execute if entity @p[tag=Attacker,tag=ElementFire] run tag @s add ElementFire
    execute if entity @p[tag=Attacker,tag=ElementWater] run tag @s add ElementWater
    execute if entity @p[tag=Attacker,tag=ElementThunder] run tag @s add ElementThunder
    execute if entity @p[tag=Attacker,tag=ElementEarth] run tag @s add ElementEarth
    execute if entity @p[tag=Attacker,tag=ElementWind] run tag @s add ElementWind

# 寿命20tick
    scoreboard players set @s Timer 20

# 向きを合わせる
    execute rotated as @p[tag=Attacker] run tp @s ~ ~1.5 ~ ~ ~

# 初期タグ削除
    tag @s remove WandInit