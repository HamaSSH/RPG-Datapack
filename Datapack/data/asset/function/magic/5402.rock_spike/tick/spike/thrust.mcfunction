#> asset:magic/5402.rock_spike/tick/spike/thrust
# 突き刺し処理

# 魔法発動したプレイヤーとその威力
    scoreboard players operation $PlayerID Temporary = @s PlayerID
    scoreboard players operation $DmgDealt Temporary = @s DmgDealt

# 当たり判定
    execute if entity @e[type=#lib:every_mob,tag=Enemy,distance=..3.3,limit=1] run function asset:magic/5402.rock_spike/tick/detected
    execute store result score $HitCount Temporary if entity @e[type=#lib:every_mob,tag=Enemy,distance=..3.3]
    execute as @e[type=#lib:every_mob,tag=Enemy,tag=MagicHit,distance=..3.3] at @s run function asset:magic/5402.rock_spike/tick/aoe

# HIT処理
    execute as @e[type=#lib:every_mob,tag=Enemy,tag=Hit,distance=..3.3] at @s run function asset:magic/5402.rock_spike/tick/hit/_

# 演出
    execute if score $HitCount Temporary matches 0 run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Small:1b,Tags:[5402.Spike]}
    execute if score $HitCount Temporary matches ..1 run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Small:1b,Tags:[5402.Spike]}
    execute if score $HitCount Temporary matches ..2 run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Small:1b,Tags:[5402.Spike]}
    execute if score $HitCount Temporary matches ..3 run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Small:1b,Tags:[5402.Spike]}
    execute store result storage asset: Pos.y int 1 run data get entity @s Pos[1]
    function asset:magic/5402.rock_spike/tick/spike/spread with storage asset: Pos
    execute at @e[type=armor_stand,tag=5402.Spike] run function asset:magic/5402.rock_spike/tick/spike/sfx
    kill @e[type=armor_stand,tag=5402.Spike,distance=..5]

# リセット
    data remove storage asset: Pos
    scoreboard players reset $PlayerID Temporary
    scoreboard players reset $DmgDealt Temporary
    scoreboard players reset $HitCount Temporary