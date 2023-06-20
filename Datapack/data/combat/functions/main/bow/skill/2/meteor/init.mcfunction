##########
#>
#

# 弓矢と放ったプレイヤーの紐づけ
    execute store result score @s PlayerID run data get storage combat:temp arrow.PlayerID
    execute store result score @s dmg_dealt run data get storage combat:temp arrow.dmg_dealt
    data modify entity @s Owner set from storage combat:temp arrow.Owner
    data modify entity @s Tags set from storage combat:temp arrow.Tags
# 溜め攻撃弓矢の初期処理
    data modify entity @s PortalCooldown set value 40
    tag @s add ArrowMeteor
# ばらけさせる
    function core:rng
    scoreboard players remove $RNG Temporary 50
    execute store result entity @s Motion[0] double 0.005 run scoreboard players get $RNG Temporary
    function core:rng
    scoreboard players remove $RNG Temporary 100
    execute store result entity @s Motion[1] double 0.01 run scoreboard players get $RNG Temporary
    function core:rng
    scoreboard players remove $RNG Temporary 50
    execute store result entity @s Motion[2] double 0.005 run scoreboard players get $RNG Temporary
# リセット
    tag @s remove ArrowSkill2
    scoreboard players reset $RNG