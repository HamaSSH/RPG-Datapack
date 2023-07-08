#> player:status/hp/bar/lv0/3
# HPの割合に応じたプレイヤーHP表示の設定

execute if score $HPRatio Temporary matches 7 run attribute @s generic.max_health base set 7
execute if score $HPRatio Temporary matches 8 run attribute @s generic.max_health base set 8