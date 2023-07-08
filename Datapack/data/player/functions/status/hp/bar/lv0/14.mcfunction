#> player:status/hp/bar/lv0/14
# HPの割合に応じたプレイヤーHP表示の設定

execute if score $HPRatio Temporary matches 29 run attribute @s generic.max_health base set 29
execute if score $HPRatio Temporary matches 30 run attribute @s generic.max_health base set 30