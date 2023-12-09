#> asset:material/101.coal_ore/collect/death
# 死亡処理

# ばらまく
    loot spawn ~ ~ ~ loot blocks/coal_ore

# Passengerをkill
    execute on passengers run kill @s

# 演出
    playsound block.nether_ore.step master @a ~ ~ ~ 0.8 0.8
    particle poof ~ ~ ~ 0.2 0.2 0.2 0.01 20 force