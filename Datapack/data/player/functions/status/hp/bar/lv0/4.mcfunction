#> player:status/hp/bar/lv0/4
# HPの割合に応じたプレイヤーHP表示の設定

execute if score $HPRatio Temporary matches 9 run attribute @s generic.max_health base set 9
execute if score $HPRatio Temporary matches 10 run attribute @s generic.max_health base set 10