#> player:combat/main/bow/quiver/store_arrow/11
# スロット11の矢筒の中に弓矢を格納

tag @s add ArrowStored
# スロット11の矢筒のデータ
    execute store result score $Capacity Temporary run data get storage lib: NewInventory[{Slot:11b}].tag.Quiver.Capacity
    execute store result score $Arrow Temporary run data get storage lib: NewInventory[{Slot:11b}].tag.Quiver.Arrow

# 矢筒のArrowタグに設定する弓矢の本数
    scoreboard players operation $Arrow Temporary += $ArrowToAdd Temporary
    scoreboard players operation $Overflow Temporary = $Arrow Temporary
    scoreboard players operation $Overflow Temporary -= $Capacity Temporary
    execute if score $Arrow Temporary >= $Capacity Temporary run scoreboard players operation $Arrow Temporary = $Capacity Temporary
    execute if score $Overflow Temporary matches ..0 run scoreboard players set $Overflow Temporary 0
    execute store result storage lib: NewInventory[{Slot:11b}].tag.Quiver.Arrow int 1 run scoreboard players get $Arrow Temporary

# Loreの設定
    function player:combat/main/bow/quiver/store_arrow/lore/11 with storage lib: NewInventory[{Slot:11b}].tag.Quiver

# clearする弓矢の本数
    scoreboard players operation $ArrowToClear Temporary += $ArrowToAdd Temporary
    scoreboard players operation $ArrowToClear Temporary -= $Overflow Temporary

# リセット
    scoreboard players reset $Capacity Temporary
    scoreboard players reset $Arrow Temporary