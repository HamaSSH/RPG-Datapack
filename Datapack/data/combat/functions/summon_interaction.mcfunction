#> combat:summon_interaction
# 左クリック検知用のInteractionを召喚する

execute anchored eyes positioned ^ ^ ^ run summon interaction ~ ~-1 ~ {height:1.5f,width:0.7f,Tags:["LeftClick"]}
advancement revoke @s only combat:summon_interaction