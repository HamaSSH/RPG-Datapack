# もしGUI付きのブロックがそこにあればタグ付け
    execute positioned ~ ~1.62 ~ if block ~ ~ ~ #attack:gui run tag @s add DisableLC
# リーチの限界まで再帰
    execute unless entity @s[tag=DisableLC] if entity @s[distance=..4] positioned ^ ^ ^0.25 run function attack:left_click/container