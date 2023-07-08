#> player:status/hp/bar/lv0/10
# HPの割合に応じたプレイヤーHP表示の設定

execute if score $HPRatio Temporary matches 21 run attribute @s generic.max_health base set 21
execute if score $HPRatio Temporary matches 22 run attribute @s generic.max_health base set 22