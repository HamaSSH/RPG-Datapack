##########
#>
#

    item replace entity @s armor.head with stone_button
# 開けたチェストトロッコの初期処理
    execute positioned ~ ~1.2 ~ as @e[type=chest_minecart,tag=MenuInit,distance=..0,sort=nearest,limit=1] positioned ~ ~-1.2 ~ run function menu:init
# 無事メニューを開けたら音演出
    execute if entity @s[tag=Menu] run playsound block.brewing_stand.brew master @s ~ ~ ~ 1.0 1.1
# リセット
    advancement revoke @s only menu:brewing/open