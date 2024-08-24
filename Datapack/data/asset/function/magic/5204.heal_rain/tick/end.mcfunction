#> asset:magic/5204.heal_rain/tick/end
# 最後の処理

data modify entity @s Motion[1] set value 0.7d

# 演出
    particle white_smoke ~ ~ ~ 2 0 2 0.1 500 force
    execute positioned ^3.5 ^ ^3.5 run particle white_smoke ~ ~ ~ 0.1 0.3 0.1 0.05 20 force
    execute positioned ^-3.5 ^ ^3.5 run particle white_smoke ~ ~ ~ 0.1 0.3 0.1 0.05 20 force
    execute positioned ^3.5 ^ ^-3.5 run particle white_smoke ~ ~ ~ 0.1 0.3 0.1 0.05 20 force
    execute positioned ^-3.5 ^ ^-3.5 run particle white_smoke ~ ~ ~ 0.1 0.3 0.1 0.05 20 force
    execute positioned ^ ^ ^5 run particle white_smoke ~ ~ ~ 0.1 0.3 0.1 0.05 20 force
    execute positioned ^ ^ ^-5 run particle white_smoke ~ ~ ~ 0.1 0.3 0.1 0.05 20 force
    execute positioned ^5 ^ ^ run particle white_smoke ~ ~ ~ 0.1 0.3 0.1 0.05 20 force
    execute positioned ^-5 ^ ^ run particle white_smoke ~ ~ ~ 0.1 0.3 0.1 0.05 20 force
    playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 0.6 1.5
    playsound minecraft:entity.skeleton_horse.swim master @a ~ ~ ~ 0.5 1
    playsound minecraft:block.amethyst_block.chime master @a ~ ~ ~ 1 1.2