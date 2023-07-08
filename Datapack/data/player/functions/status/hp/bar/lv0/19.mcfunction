#> player:status/hp/bar/lv0/19
# HPの割合に応じたプレイヤーHP表示の設定

execute if score $HPRatio Temporary matches 39 run attribute @s generic.max_health base set 39
execute if score $HPRatio Temporary matches 40.. run attribute @s generic.max_health base set 40