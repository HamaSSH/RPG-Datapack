#> world:dungeon/exit/tick
# ダンジョンの出口

particle reverse_portal ~ ~ ~ 1 1 1 0.03 36 force
title @a[distance=..3] times 0 4 0
title @a[distance=..3] title ""
title @a[distance=..3] subtitle "- スニークで帰還 -"
execute as @a[distance=..3] if predicate lib:is_sneaking at @s run function world:dungeon/exit/_