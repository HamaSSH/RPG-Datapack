#> player:status/hp/bar/lv0/15
# HPの割合に応じたプレイヤーHP表示の設定

execute if score $HPRatio Temporary matches 31 run attribute @s generic.max_health base set 31
execute if score $HPRatio Temporary matches 32 run attribute @s generic.max_health base set 32