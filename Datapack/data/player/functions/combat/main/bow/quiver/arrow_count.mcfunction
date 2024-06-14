#> player:combat/main/bow/quiver/arrow_count
# 矢筒の中に入っている矢の本数を取得

# 各スロットの矢筒ごとに処理
    execute store result score $Arrow9 Temporary run data get storage player: Inventory[{Slot:9b}].components.minecraft:custom_data.quiver.arrow
    execute store result score $Arrow10 Temporary run data get storage player: Inventory[{Slot:10b}].components.minecraft:custom_data.quiver.arrow
    execute store result score $Arrow11 Temporary run data get storage player: Inventory[{Slot:11b}].components.minecraft:custom_data.quiver.arrow
    scoreboard players operation $Arrow Temporary += $Arrow9 Temporary
    scoreboard players operation $Arrow Temporary += $Arrow10 Temporary
    scoreboard players operation $Arrow Temporary += $Arrow11 Temporary

# リセット
    scoreboard players reset $Arrow9 Temporary
    scoreboard players reset $Arrow10 Temporary
    scoreboard players reset $Arrow11 Temporary