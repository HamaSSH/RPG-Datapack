##########
#>
#

# 矢筒を装備していない/外したら弓矢数を0に
    scoreboard players operation @s PreviousArrow += @s Arrow
    scoreboard players set @s Arrow 0