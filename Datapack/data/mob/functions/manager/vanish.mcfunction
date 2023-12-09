#> mob:manager/vanish
# 死亡時のパーティクルを出さずに始末

execute if entity @s[type=arrow] run particle poof ~ ~ ~ 0 0 0 0 2 force
tp @s ~ -1000 ~
kill @s