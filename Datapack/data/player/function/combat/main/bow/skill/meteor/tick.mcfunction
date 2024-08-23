#> player:combat/main/bow/skill/meteor/tick
# ため攻撃矢の常時実行

data modify entity @s PierceLevel set value 30

# メテオライトの召喚
    tag @s add MeteorArrow
    scoreboard players operation $PlayerID Temporary = @s PlayerID
    scoreboard players operation $DmgDealt Temporary = @s DmgDealt
    scoreboard players operation $ElementRank Temporary = @s ElementRank
    execute if score @s Timer matches 1..8 summon arrow run function player:combat/main/bow/skill/meteor/meteorite/summon
    execute if score @s Timer matches 1..8 summon arrow run function player:combat/main/bow/skill/meteor/meteorite/summon
    execute if score @s Timer matches 1..8 summon arrow run function player:combat/main/bow/skill/meteor/meteorite/summon

# リセット
    tag @s remove MeteorArrow
    scoreboard players reset $PlayerID Temporary
    scoreboard players reset $DmgDealt Temporary
    scoreboard players reset $ElementRank Temporary

# 着弾したら一定時間後消滅
    execute if data entity @s {inGround:1b} run scoreboard players set @s Timer 0