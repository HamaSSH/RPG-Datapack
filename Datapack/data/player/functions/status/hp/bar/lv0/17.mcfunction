#> player:status/hp/bar/lv0/17
# HPの割合に応じたプレイヤーHP表示の設定

execute if score $HPRatio Temporary matches 35 run attribute @s generic.max_health base set 35
execute if score $HPRatio Temporary matches 36 run attribute @s generic.max_health base set 36