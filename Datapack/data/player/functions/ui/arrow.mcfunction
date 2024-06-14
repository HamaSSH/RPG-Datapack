#> player:ui/arrow
# 矢のUI表示

# 左クリック弓矢表示
    execute if score @s ArrowLC matches ..0 run data modify storage player:ui ArrowLC set value '"\\uE1D0"'
    execute if score @s ArrowLC matches 1 run data modify storage player:ui ArrowLC set value '"\\uE1D1"'
    execute if score @s ArrowLC matches 2 run data modify storage player:ui ArrowLC set value '"\\uE1D2"'

# 弓矢の数に応じたスぺース
    data modify storage player:ui Quiver.RightHanded set value '[{"nbt":"ArrowLC","storage":"player:ui","interpret":true}]'

# 左利き用
    execute if entity @s[tag=LeftHanded] run data modify storage player:ui Quiver.LeftHanded set from storage player:ui Quiver.RightHanded
    execute if entity @s[tag=LeftHanded] run data modify storage player:ui Quiver.RightHanded set value '"\\uF829\\uF828\\uF821"'