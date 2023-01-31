##########
#>
#

# 懐中電灯ON
    playsound block.amethyst_cluster.step master @s ~ ~ ~ 1.0 1.0
    playsound block.amethyst_cluster.step master @s ~ ~ ~ 1.0 1.0
    particle end_rod ~ ~1 ~ 0.5 0.5 0.5 0.1 10 force
    scoreboard players add @s flash_timer 50
    execute if score @s flash_timer matches 250.. run scoreboard players set @s flash_timer 250