#> asset:magic/5203.bubble_blast/tick/detect/_
# 周囲のモブを検知する

# 魔法発動したプレイヤーとその威力
    scoreboard players operation $PlayerID Temporary = @s PlayerID
    scoreboard players operation $DmgDealt Temporary = @s DmgDealt

# 当たり判定
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:every_mob,tag=Enemy,tag=!Bubbled,dx=0,limit=1] run function asset:magic/5203.bubble_blast/tick/detected

# HIT処理
    execute as @e[type=#lib:every_mob,tag=Enemy,tag=!Bubbled,tag=Hit,distance=..6] at @s run function asset:magic/5203.bubble_blast/tick/ride
    execute if entity @s[tag=Attacker] if predicate lib:has_passenger run scoreboard players set @s Timer 100

# リセット
    scoreboard players reset $PlayerID Temporary
    scoreboard players reset $DmgDealt Temporary
    tag @s remove Attacker