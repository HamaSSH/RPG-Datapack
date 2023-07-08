#> player:status/hp/bar/lv0/8
# HPの割合に応じたプレイヤーHP表示の設定

execute if score $HPRatio Temporary matches 17 run attribute @s generic.max_health base set 17
execute if score $HPRatio Temporary matches 18 run attribute @s generic.max_health base set 18