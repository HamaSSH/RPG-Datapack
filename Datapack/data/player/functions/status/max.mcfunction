##########
#>
#

# 最終的なステータスが一定値以上にならないように補正
    execute if score @s def matches 512.. run scoreboard players set @s def 512
    execute if score @s spd matches 512.. run scoreboard players set @s spd 512
    execute if score @s crt matches 512.. run scoreboard players set @s crt 512
    execute if score @s luk matches 512.. run scoreboard players set @s luk 512