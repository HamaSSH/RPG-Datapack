#> player:status/hp/regen_effect
# 再生効果によるHP回復

# 再生効果の強さをもとにRegenerationスコアに加算
    execute store result score $RegenAmplifier Temporary run data get entity @s active_effects[{id:"minecraft:regeneration"}].amplifier
    scoreboard players add $RegenAmplifier Temporary 1
    scoreboard players operation @s Regeneration += $RegenAmplifier Temporary

# Regenerationスコアが50になったらHealingスコアを1上げる
    execute if score @s Regeneration matches 50.. run scoreboard players add @s Healing 1
    execute if score @s Regeneration matches 50.. run scoreboard players remove @s Regeneration 50

# リセット
    scoreboard players reset $RegenAmplifier Temporary