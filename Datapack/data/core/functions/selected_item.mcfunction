# SelectedItemが無ければmainhandをairに
    data modify storage core:temp SelectedItem set from entity @s SelectedItem
    execute unless data storage core:temp SelectedItem run item replace entity @s weapon.mainhand with air
# ステータス更新
    function player:status/update/_
# リセット
    data remove storage core:temp SelectedItem
    advancement revoke @s only core:selected_item