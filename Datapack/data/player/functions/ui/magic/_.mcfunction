#> player:ui/magic/_
# 魔導書のクールダウン表示

# 初期状態
    data modify storage player:ui magic set value '"\\uF829\\uF828\\uF821"'

#
    execute if predicate player:offhand_magic/fire run function player:ui/magic/fire
    execute if predicate player:offhand_magic/water run function player:ui/magic/water