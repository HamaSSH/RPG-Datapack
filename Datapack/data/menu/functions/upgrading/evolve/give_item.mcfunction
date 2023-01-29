# アイテムを与える
    data modify storage menu:temp Data.CustomModelData set from storage menu:temp Data.Items[{Slot:10b}].tag.CustomModelData
    data modify storage menu:temp Data.grade set from storage menu:temp Data.Items[{Slot:10b}].tag.grade
    function #item:upgrade
# プレイヤーのインベントリ状況に応じてgiveかspawnかを決定
    function menu:return_item/loot
# 演出
    playsound minecraft:block.anvil.place master @p ~ ~ ~ 0.9 1.5
    playsound minecraft:block.anvil.destroy master @p ~ ~ ~ 0.7 0.7
    playsound minecraft:block.anvil.use master @p ~ ~ ~ 0.6
# 強化元のアイテムを削除
    data remove storage menu:temp Data.refresh[{Slot:10b}]
# ホームページ(0)へ戻る
    scoreboard players set @s page 10