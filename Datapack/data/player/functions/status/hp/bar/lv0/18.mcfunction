#> player:status/hp/bar/lv0/18
# HPの割合に応じたプレイヤーHP表示の設定

execute if score $HPRatio Temporary matches 37 run attribute @s generic.max_health base set 37
execute if score $HPRatio Temporary matches 38 run attribute @s generic.max_health base set 38