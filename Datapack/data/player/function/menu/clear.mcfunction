#> player:menu/clear
# インベントリ内のメニューアイテムのclear

$execute unless data storage player: menu{slot0:53} run item replace entity @s container.$(slot0) with air
$execute unless data storage player: menu{slot1:53} run item replace entity @s container.$(slot1) with air
$execute unless data storage player: menu{slot2:53} run item replace entity @s container.$(slot2) with air
$execute unless data storage player: menu{slot3:53} run item replace entity @s container.$(slot3) with air