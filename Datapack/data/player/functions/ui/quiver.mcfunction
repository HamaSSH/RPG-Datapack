#> player:ui/quiver
# 矢筒UI（弓矢数表示）

# 左クリック弓矢表示
    execute if score @s ArrowLC matches ..0 run data modify storage player:ui ArrowLC set value '"\\uE210"'
    execute if score @s ArrowLC matches 1 run data modify storage player:ui ArrowLC set value '"\\uE211"'

# 矢筒の中の合計弓矢数を取得
    execute store result score @s Arrow run data get storage player: Accessories[{Slot:9b}].tag.Quiver.Arrow
    execute store result score $Arrow10 Temporary run data get storage player: Accessories[{Slot:10b}].tag.Quiver.Arrow
    execute store result score $Arrow11 Temporary run data get storage player: Accessories[{Slot:11b}].tag.Quiver.Arrow
    scoreboard players operation @s Arrow += $Arrow10 Temporary
    scoreboard players operation @s Arrow += $Arrow11 Temporary

# 弓矢の数に応じたスぺース
    execute if score @s Arrow matches ..9 run data modify storage player:ui Quiver set value '[{"nbt":"ArrowLC","storage":"player:ui","interpret":true},"\\uF809\\uF808\\uF801\\uE213","\\uF807",{"score":{"name":"@s","objective":"Arrow"},"font":"shift_31"},"\\uF821"]'
    execute if score @s Arrow matches 10..999 run data modify storage player:ui Quiver set value '[{"nbt":"ArrowLC","storage":"player:ui","interpret":true},"\\uF809\\uF808\\uF801\\uE213","\\uF808\\uF805",{"score":{"name":"@s","objective":"Arrow"},"font":"shift_31"},"\\uF821"]'
    execute if score @s Arrow matches 100..999 run data modify storage player:ui Quiver set value '[{"nbt":"ArrowLC","storage":"player:ui","interpret":true},"\\uF809\\uF808\\uF801\\uE213","\\uF809\\uF803",{"score":{"name":"@s","objective":"Arrow"},"font":"shift_31"},"\\uF821"]'
    execute if score @s Arrow matches 1000.. run data modify storage player:ui Quiver set value '[{"nbt":"ArrowLC","storage":"player:ui","interpret":true},"\\uF809\\uF808\\uF801\\uE213","\\uF809\\uF803",{"text":"999","font":"shift_31"},"\\uF821"]'

# リセット
    scoreboard players reset $Arrow10 Temporary
    scoreboard players reset $Arrow11 Temporary