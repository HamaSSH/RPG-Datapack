#> player:status/hp/bar/lv0/16
# HPの割合に応じたプレイヤーHP表示の設定

execute if score $HPRatio Temporary matches 33 run attribute @s generic.max_health base set 33
execute if score $HPRatio Temporary matches 34 run attribute @s generic.max_health base set 34