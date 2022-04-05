# 武器のレアリティ
    execute store result score $Rarity Temporary run data get storage menu:temp Data.Items[{Slot:10b,tag:{menu:{upgradable:1b}}}].tag.rarity
# 合成可能アイテムが入れられたら配置
    execute unless data storage menu:temp Data.Items[{Slot:10b,tag:{menu:{upgradable:1b}}}] run scoreboard players set @s page 10
    data modify storage menu:temp Data.combine append from storage menu:temp Data.Items[{tag:{menu:{combinable:1b}}}]
    execute if data storage menu:temp Data.combine[] run function menu:upgrading/put_items/page2
# 合成アイテム(+板ガラス)を鍛冶台のタグに入れる
    data modify storage menu:temp Data.smithing set from storage menu:temp Data.Items[{Slot:14b,tag:{menu:{button:"combine"}}}]
    data modify storage menu:temp Data.smithing.Count set value 2b
    data modify storage menu:temp Data.smithing.tag.menu.combine append from storage menu:temp Data.refresh[{tag:{menu:{combinable:1b}}}]
    data modify storage menu:temp Data.smithing.tag.menu.combine append from storage menu:temp Data.Items[{id:"minecraft:black_stained_glass_pane"}]
    data modify storage menu:temp Data.smithing.tag.previous set from storage menu:temp Data.Items[{Slot:10b,tag:{menu:{upgradable:1b}}}]
    data modify storage menu:temp Data.refresh append from storage menu:temp Data.smithing
# 合成ページ(2)でのボタンクリック検知
    # ホームページ(0)へ
        execute unless data storage menu:temp Data.Items[{Slot:9b,tag:{menu:{blank:1b}}}] run scoreboard players set @s page 10
    # 未処理のアイテムを返却
        execute if score @s page matches 10 unless data storage menu:temp Data.Items[{Slot:14b}].tag.previous.tag.menu.combine[{Slot:11b,tag:{menu:{combinable:1b}}}] if data storage menu:temp Data.Items[{Slot:11b,tag:{menu:{combinable:1b}}}] run data modify storage menu:temp Data.return append from storage menu:temp Data.Items[{Slot:11b,tag:{menu:{combinable:1b}}}]
        execute if score @s page matches 10 unless data storage menu:temp Data.Items[{Slot:14b}].tag.previous.tag.menu.combine[{Slot:12b,tag:{menu:{combinable:1b}}}] if data storage menu:temp Data.Items[{Slot:11b,tag:{menu:{combinable:1b}}}] run data modify storage menu:temp Data.return append from storage menu:temp Data.Items[{Slot:12b,tag:{menu:{combinable:1b}}}]
        execute if score @s page matches 10 unless data storage menu:temp Data.Items[{Slot:14b}].tag.previous.tag.menu.combine[{Slot:13b,tag:{menu:{combinable:1b}}}] if data storage menu:temp Data.Items[{Slot:11b,tag:{menu:{combinable:1b}}}] run data modify storage menu:temp Data.return append from storage menu:temp Data.Items[{Slot:13b,tag:{menu:{combinable:1b}}}]
        execute if score @s page matches 10 run function menu:return_item/_
    # 「合成」を実行
        execute unless data storage menu:temp Data.Items[{Slot:14b,tag:{menu:{button:"combine"}}}] run function menu:upgrading/combine/check
    # 合成されていたアイテムを取り除いたとき
        execute if data storage menu:temp Data.Items[{Slot:10b}].tag.menu.combine[{Slot:11b,tag:{menu:{combinable:1b}}}] unless data storage menu:temp Data.Items[{Slot:11b,tag:{menu:{combinable:1b}}}] run function menu:upgrading/combine/remove/11
        execute if data storage menu:temp Data.Items[{Slot:10b}].tag.menu.combine[{Slot:12b,tag:{menu:{combinable:1b}}}] unless data storage menu:temp Data.Items[{Slot:12b,tag:{menu:{combinable:1b}}}] run function menu:upgrading/combine/remove/12
        execute if data storage menu:temp Data.Items[{Slot:10b}].tag.menu.combine[{Slot:13b,tag:{menu:{combinable:1b}}}] unless data storage menu:temp Data.Items[{Slot:13b,tag:{menu:{combinable:1b}}}] run function menu:upgrading/combine/remove/13
# リセット
    scoreboard players reset $Rarity
    scoreboard players reset $ItemsChanged