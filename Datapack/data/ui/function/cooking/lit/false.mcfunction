#> ui:cooking/lit/false
# 焚き火を消す

setblock ~ ~1 ~ minecraft:campfire[lit=false]
tag @s remove CookingMule
tag @s add UnLit