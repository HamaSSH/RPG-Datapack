#> player:status/hp/bar/lv0/9
# HPの割合に応じたプレイヤーHP表示の設定

execute if score $HPRatio Temporary matches 19 run attribute @s generic.max_health base set 19
execute if score $HPRatio Temporary matches 20 run attribute @s generic.max_health base set 20