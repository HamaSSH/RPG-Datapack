#> player:combat/main/bow/quiver/store_arrow/10
# スロット10の矢筒の中に弓矢を格納

tag @s add ArrowStored
# スロット10の矢筒のデータ
    execute store result score $Capacity Temporary run data get storage lib: NewInventory[{Slot:10b}].components.minecraft:custom_data.quiver.capacity
    execute store result score $Arrow Temporary run data get storage lib: NewInventory[{Slot:10b}].components.minecraft:custom_data.quiver.arrow

# 矢筒のArrowタグに設定する弓矢の本数
    scoreboard players operation $Arrow Temporary += $ArrowToAdd Temporary
    scoreboard players operation $Overflow Temporary = $Arrow Temporary
    scoreboard players operation $Overflow Temporary -= $Capacity Temporary
    execute if score $Arrow Temporary >= $Capacity Temporary run scoreboard players operation $Arrow Temporary = $Capacity Temporary
    execute if score $Overflow Temporary matches ..0 run scoreboard players set $Overflow Temporary 0
    execute store result storage lib: NewInventory[{Slot:10b}].components.minecraft:custom_data.quiver.arrow int 1 run scoreboard players get $Arrow Temporary

# Loreの設定
    function player:combat/main/bow/quiver/store_arrow/lore/10 with storage lib: NewInventory[{Slot:10b}].components.minecraft:custom_data.quiver

# clearする弓矢の本数
    scoreboard players operation $ArrowToClear Temporary += $ArrowToAdd Temporary
    scoreboard players operation $ArrowToClear Temporary -= $Overflow Temporary
    execute if score $Overflow Temporary matches ..0 store result storage player: Arrow.ClearAmount int 1 run scoreboard players get $ArrowToClear Temporary

# あふれた分をスロット11の矢筒へ...
    scoreboard players operation $ArrowToAdd Temporary = $Overflow Temporary
    execute if score $Overflow Temporary matches 1.. run tag @s remove ArrowStored

# リセット
    scoreboard players reset $Capacity Temporary
    scoreboard players reset $Arrow Temporary