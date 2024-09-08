#> asset:magic/5402.rock_spike/tick/spike/thrust
# 突き刺し処理

# 魔法発動したプレイヤーとその威力
    scoreboard players operation $PlayerID Temporary = @s PlayerID
    scoreboard players operation $DmgDealt Temporary = @s DmgDealt

# 当たり判定
    execute if entity @e[type=#lib:every_mob,tag=Enemy,distance=..3.3,limit=1] run function asset:magic/5402.rock_spike/tick/detected
    execute as @e[type=#lib:every_mob,tag=Enemy,tag=MagicHit,distance=..3.3] at @s run function asset:magic/5402.rock_spike/tick/aoe

# HIT処理
    execute as @e[type=#lib:every_mob,tag=Enemy,tag=Hit,distance=..3.3] at @s run function asset:magic/5402.rock_spike/tick/hit/_

# リセット
    scoreboard players reset $PlayerID Temporary
    scoreboard players reset $DmgDealt Temporary