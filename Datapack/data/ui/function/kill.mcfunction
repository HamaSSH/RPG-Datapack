#> ui:kill
# 近くのuiをkillする

execute as @e[type=mule,tag=UIMule,distance=..2] on passengers run kill @s
execute as @e[type=mule,tag=UIMule,distance=..2] at @s run setblock ~ ~0.1 ~ air
execute as @e[type=mule,tag=UIMule,distance=..2] run kill @s