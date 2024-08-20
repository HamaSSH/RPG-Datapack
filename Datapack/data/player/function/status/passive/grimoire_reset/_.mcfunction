#> player:status/passive/grimoire_reset/_
# 魔導書の即リセット判定(ウィザードのパッシブ)

execute store result score $ResetChance Temporary run random value 1..100
execute if score $ResetChance Temporary <= @s GrimReset run tag @s add GrimReset

# 演出
    execute if score $ResetChance Temporary <= @s GrimReset run playsound resource:custom.levelup master @s ~ ~ ~ 0.3 1.8
    execute if score $ResetChance Temporary <= @s GrimReset run playsound block.amethyst_block.chime master @s ~ ~ ~ 1 1.3
    execute if score $ResetChance Temporary <= @s GrimReset run playsound block.amethyst_block.break master @s ~ ~ ~ 1 2

# リセット
    scoreboard players reset $ResetChance Temporary