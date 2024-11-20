#> asset:material/coal_ore/collect/death
# 死亡処理

# ばらまく
    loot spawn ~ ~ ~ loot blocks/coal_ore

# 後処理
    execute on passengers run kill @s
    kill @s

# 演出
    playsound block.nether_ore.step master @a ~ ~ ~ 0.8 0.8
    particle poof ~ ~ ~ 0.2 0.2 0.2 0.01 20 force