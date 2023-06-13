#> item:fishing/magma/game/pattern/7
# パターン7 (50tick)

tp @s ^ ^ ^-0.07
execute align y if block ~ ~ ~ lava positioned ~ ~0.9 ~ run particle block fire ~ ~ ~ 0.05 0 0.05 0 2 force
execute align y if block ~ ~ ~ lava positioned ~ ~0.9 ~ run particle falling_lava ~ ~ ~ 0.2 0.1 0.2 0 2 force
execute align y if block ~ ~ ~ lava positioned ~ ~0.9 ~ run particle dust_color_transition 1 0.58 0.102 1 0.992 0.31 0.039 ~ ~ ~ 0.05 0 0.05 0 1 force