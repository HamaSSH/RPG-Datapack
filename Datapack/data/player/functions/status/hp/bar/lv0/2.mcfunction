#> player:status/hp/bar/lv0/2
# HPの割合に応じたプレイヤーHP表示の設定

execute if score $HPRatio Temporary matches 5 run attribute @s generic.max_health base set 5
execute if score $HPRatio Temporary matches 6 run attribute @s generic.max_health base set 6