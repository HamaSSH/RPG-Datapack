#> player:combat/main/bow/skill/meteor/tick
# ため攻撃矢の常時実行

data modify entity @s PierceLevel set value 30

# メテオライトの召喚
    tag @s add MeteorArrow
    scoreboard players operation $PlayerID Temporary = @s PlayerID
    scoreboard players operation $DmgDealt Temporary = @s DmgDealt
    execute if score @s Timer matches 1..8 summon arrow run function player:combat/main/bow/skill/meteor/meteorite/summon
    execute if score @s Timer matches 1..8 summon arrow run function player:combat/main/bow/skill/meteor/meteorite/summon
    execute if score @s Timer matches 1..8 summon arrow run function player:combat/main/bow/skill/meteor/meteorite/summon

# 演出
    particle crit ~ ~ ~ 0.1 0.1 0.1 0 10 force
    particle dust_color_transition 1 0.804 0.169 2 1 0.125 0.023 ~ ~ ~ 0.2 0.2 0.2 0.01 2 force
    particle dust_color_transition 1 0.859 0.392 2 1 0.494 0.153 ~ ~ ~ 0.2 0.2 0.2 0.01 2 force
    particle flame ~ ~ ~ 0.2 0.2 0.2 0.02 3 force

# リセット
    tag @s remove MeteorArrow
    scoreboard players reset $PlayerID Temporary
    scoreboard players reset $DmgDealt Temporary

# 着弾したら一定時間後消滅
    execute if data entity @s {inGround:1b} run scoreboard players set @s Timer 0