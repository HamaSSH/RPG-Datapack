#> player:buff/modifier/poison_immune
# 毒エフェクト無効

data modify storage player: buff.duration set value 0

# 演出
    execute at @s run playsound resource:custom.levelup master @s ~ ~ ~ 0.1 1.7
    execute at @s run playsound block.amethyst_block.chime master @s ~ ~ ~ 1 1.2
    execute at @s run playsound block.amethyst_block.chime master @s ~ ~ ~ 1 1.2