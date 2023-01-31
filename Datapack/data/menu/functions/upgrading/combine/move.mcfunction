##########
#>
#

# 合成アイテム(+板ガラス)を鍛冶台のタグに入れる
    data modify storage menu:temp Data.smithing set value {Count:1b,Slot:14b,id:"minecraft:smithing_table",tag:{menu:{blank:1b,button:"combine"},display:{Name:'{"text":"合成","bold":true,"italic":false}'}}}
    data modify storage menu:temp Data.smithing.tag.menu.combine append from storage menu:temp Data.refresh[{tag:{menu:{combinable:1b}}}]
    data modify storage menu:temp Data.smithing.tag.menu.combine append from storage menu:temp Data.Items[{id:"minecraft:black_stained_glass_pane"}]
    data modify storage menu:temp Data.smithing.tag.previous set from storage menu:temp Data.Items[{Slot:10b,tag:{menu:{upgradable:1b}}}]
    data modify storage menu:temp Data.refresh append from storage menu:temp Data.smithing
# ページスコアを設定
    scoreboard players set @s page 12
# 演出
    execute unless score $CombineIngredients Temporary matches 0 run scoreboard players set $ButtonClicked Temporary 1
    execute unless score $CombineIngredients Temporary matches 0 run playsound minecraft:block.grindstone.use master @p ~ ~ ~ 1 1.5