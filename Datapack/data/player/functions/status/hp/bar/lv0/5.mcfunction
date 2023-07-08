#> player:status/hp/bar/lv0/5
# HPの割合に応じたプレイヤーHP表示の設定

execute if score $HPRatio Temporary matches 11 run attribute @s generic.max_health base set 11
execute if score $HPRatio Temporary matches 12 run attribute @s generic.max_health base set 12