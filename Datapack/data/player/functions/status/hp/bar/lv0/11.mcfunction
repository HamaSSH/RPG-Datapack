#> player:status/hp/bar/lv0/11
# HPの割合に応じたプレイヤーHP表示の設定

execute if score $HPRatio Temporary matches 23 run attribute @s generic.max_health base set 23
execute if score $HPRatio Temporary matches 24 run attribute @s generic.max_health base set 24