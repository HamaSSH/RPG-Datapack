# 鍛冶台に入っている合成アイテム(+板ガラス)のデータを武器に代入
    data modify storage menu:temp Data.refresh[0].tag.menu.combine set from storage menu:temp Data.smithing.tag.menu.combine
# それぞれのアイテムに対して合成元アイテムにbonusタグを加算＋Loreを編集
    execute unless data storage menu:temp Data.Items[{Slot:10b}].tag.menu.combine[{Slot:11b,tag:{menu:{combinable:1b}}}] if data storage menu:temp Data.refresh[{Slot:11b,tag:{menu:{combinable:1b}}}] run function menu:upgrading/combine/add/11
    execute unless data storage menu:temp Data.Items[{Slot:10b}].tag.menu.combine[{Slot:12b,tag:{menu:{combinable:1b}}}] if data storage menu:temp Data.refresh[{Slot:12b,tag:{menu:{combinable:1b}}}] run function menu:upgrading/combine/add/12
    execute unless data storage menu:temp Data.Items[{Slot:10b}].tag.menu.combine[{Slot:13b,tag:{menu:{combinable:1b}}}] if data storage menu:temp Data.refresh[{Slot:13b,tag:{menu:{combinable:1b}}}] run function menu:upgrading/combine/add/13
# 演出
    playsound minecraft:entity.villager.work_weaponsmith master @p ~ ~ ~ 0.8 0.7
    playsound minecraft:block.anvil.use master @p ~ ~ ~ 0.3 0.9
    playsound minecraft:block.anvil.place master @p ~ ~ ~ 0.7 1.5
    scoreboard players set $ButtonClicked Temporary 1
# ホームページ(0)へ戻る
    scoreboard players set @s page 10