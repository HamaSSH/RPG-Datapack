#> player:status/hp/bar/lv0/0
# HPの割合に応じたプレイヤーHP表示の設定

execute if score $HPRatio Temporary matches ..1 run attribute @s generic.max_health base set 1
execute if score $HPRatio Temporary matches 2 run attribute @s generic.max_health base set 2