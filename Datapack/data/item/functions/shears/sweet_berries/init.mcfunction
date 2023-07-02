##########
#>
#

# 最初のブロック設置
    setblock ~ ~ ~ dead_horn_coral[waterlogged=false]
    scoreboard players set @s hp 5
# タグ
    tag @s add Collect
    tag @s remove CollectInit