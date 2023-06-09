##########
#>
#

# ばらまく
    loot spawn ~ ~ ~ loot minecraft:blocks/gold_ore
    loot spawn ~ ~ ~ loot minecraft:blocks/gold_ore
    loot spawn ~ ~ ~ loot minecraft:blocks/gold_ore
    loot spawn ~ ~ ~ loot minecraft:blocks/gold_ore
    kill @s
# 演出
    playsound minecraft:block.nether_ore.step master @a ~ ~ ~ 0.8 0.8
    particle minecraft:poof ~ ~ ~ 0.2 0.2 0.2 0.01 20 force