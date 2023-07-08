#> player:status/hp/bar/lv0/7
# HPの割合に応じたプレイヤーHP表示の設定

execute if score $HPRatio Temporary matches 15 run attribute @s generic.max_health base set 15
execute if score $HPRatio Temporary matches 16 run attribute @s generic.max_health base set 16