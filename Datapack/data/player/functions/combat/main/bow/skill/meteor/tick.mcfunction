#> player:combat/main/bow/skill/meteor/tick
# ため攻撃矢の常時実行

data modify entity @s PierceLevel set value 5

# メテオライトの召喚
    scoreboard players operation $PlayerID Temporary = @s PlayerID
    scoreboard players operation $DmgDealt Temporary = @s DmgDealt
    execute if score @s Timer matches 1..8 summon arrow run function player:combat/main/bow/skill/meteor/meteorite/summon
    execute if score @s Timer matches 1..8 summon arrow run function player:combat/main/bow/skill/meteor/meteorite/summon
    execute if score @s Timer matches 1..8 summon arrow run function player:combat/main/bow/skill/meteor/meteorite/summon

# 演出
    particle explosion ~ ~ ~ 1.2 1.2 1.2 1 2 force
    particle crit ~ ~ ~ 0.1 0.1 0.1 0 10 force

# リセット
    scoreboard players reset $PlayerID Temporary
    scoreboard players reset $DmgDealt Temporary

# 着弾したら一定時間後消滅
    execute if data entity @s {inGround:1b} run scoreboard players set @s Timer 0