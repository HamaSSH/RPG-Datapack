#> player:status/hp/bar/lv0/12
# HPの割合に応じたプレイヤーHP表示の設定

execute if score $HPRatio Temporary matches 25 run attribute @s generic.max_health base set 25
execute if score $HPRatio Temporary matches 26 run attribute @s generic.max_health base set 26