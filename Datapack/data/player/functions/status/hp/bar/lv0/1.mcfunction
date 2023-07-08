#> player:status/hp/bar/lv0/1
# HPの割合に応じたプレイヤーHP表示の設定

execute if score $HPRatio Temporary matches 3 run attribute @s generic.max_health base set 3
execute if score $HPRatio Temporary matches 4 run attribute @s generic.max_health base set 4