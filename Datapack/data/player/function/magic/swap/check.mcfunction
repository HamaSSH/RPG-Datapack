#> player:magic/swap/check
# 元々mainhand:武器、offhand:魔導書だったか検知

execute if predicate player:swap_magic/swap if entity @s[tag=MagicSet] run function player:magic/swap/_

# mainhand:武器、offhand:魔導書だったかを1tickだけ保存
    tag @s remove MagicSet
    execute if predicate player:swap_magic/set run tag @s add MagicSet