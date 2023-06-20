##########
#>
#

# Arrowスコアの加算
    execute if score @s PreviousArrow matches 1.. run function combat:main/bow/quiver/equip
    execute store result score $ArrowCount Temporary run clear @s arrow{arrow:1b} 0
    scoreboard players operation @s Arrow += $ArrowCount Temporary
# リセット
    clear @s arrow{arrow:1b}
    scoreboard players reset $ArrowCount