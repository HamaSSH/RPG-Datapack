#> asset:magic/5101.fire_ball/tick/hit/water
# 水にぶつかった場合

tag @s add Kill

# 演出
    particle cloud ~ ~ ~ 0.2 0.7 0.2 0.05 30 force
    playsound block.fire.extinguish master @a ~ ~ ~ 0.4 0.8