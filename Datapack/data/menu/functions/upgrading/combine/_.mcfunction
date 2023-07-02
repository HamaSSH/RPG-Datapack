##########
#>
#

# 鍛冶台に入っている合成アイテム(+板ガラス)のデータを武器に代入
    data modify storage menu:temp Data.refresh[{Slot:10b}].tag.menu.combine set from storage menu:temp Data.smithing.tag.menu.combine
# それぞれのアイテムに対して合成元アイテムにbonusタグ分を加算
    function menu:upgrading/combine/modify/get_bonus
    execute unless data storage menu:temp Data.Items[{Slot:10b}].tag.menu.combine[{Slot:11b,tag:{menu:{combinable:1b}}}] if data storage menu:temp Data.refresh[{Slot:11b,tag:{menu:{combinable:1b}}}] run function menu:upgrading/combine/add/11
    execute unless data storage menu:temp Data.Items[{Slot:10b}].tag.menu.combine[{Slot:12b,tag:{menu:{combinable:1b}}}] if data storage menu:temp Data.refresh[{Slot:12b,tag:{menu:{combinable:1b}}}] run function menu:upgrading/combine/add/12
    execute unless data storage menu:temp Data.Items[{Slot:10b}].tag.menu.combine[{Slot:13b,tag:{menu:{combinable:1b}}}] if data storage menu:temp Data.refresh[{Slot:13b,tag:{menu:{combinable:1b}}}] run function menu:upgrading/combine/add/13
# 合成元アイテムのbonusタグを上書き
    function menu:upgrading/combine/modify/bonus_status
# 合成元アイテムのLoreを上書き
    function menu:upgrading/combine/modify/lore
# 演出
    playsound entity.villager.work_weaponsmith master @p ~ ~ ~ 0.8 0.7
    playsound block.anvil.use master @p ~ ~ ~ 0.3 0.9
    playsound block.anvil.place master @p ~ ~ ~ 0.7 1.5
    scoreboard players set $ButtonClicked Temporary 1
# リセット
    scoreboard players reset $HPCombine
    scoreboard players reset $MPCombine
    scoreboard players reset $HPRegenCombine
    scoreboard players reset $MPRegenCombine
    scoreboard players reset $ADCombine
    scoreboard players reset $APCombine
    scoreboard players reset $DEXCombine
    scoreboard players reset $DEFCombine
    scoreboard players reset $SPDCombine
    scoreboard players reset $CRTCombine
    scoreboard players reset $LUKCombine
    scoreboard players reset $Bonus
# ホームページ(0)へ戻る
    scoreboard players set @s page 10