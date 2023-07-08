#> player:status/hp/bar/lv0/13
# HPの割合に応じたプレイヤーHP表示の設定

execute if score $HPRatio Temporary matches 27 run attribute @s generic.max_health base set 27
execute if score $HPRatio Temporary matches 28 run attribute @s generic.max_health base set 28