#> item:shears/using
# ハサミで右クリック中の処理

# 採取処理
    tag @s add UsingShears
    scoreboard players add @s UsingShears 1
    execute anchored eyes positioned ^ ^ ^ run function item:shears/re

# リセット
    tag @s remove Harvestable
    advancement revoke @s only item:using_brush