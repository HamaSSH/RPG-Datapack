#> player:status/hp/bar/lv0/6
# HPの割合に応じたプレイヤーHP表示の設定

execute if score $HPRatio Temporary matches 13 run attribute @s generic.max_health base set 13
execute if score $HPRatio Temporary matches 14 run attribute @s generic.max_health base set 14